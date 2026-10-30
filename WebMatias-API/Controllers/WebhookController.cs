using MercadoPago.Error;
using MercadoPago.Webhook;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.RateLimiting;
using Microsoft.Data.SqlClient;
using WebMatias_API.Dao.GiroDao;
using WebMatias_API.Dao.PagoMercadoPagoDao;
using WebMatias_API.Models;
using WebMatias_API.Service;

namespace WebMatias_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WebhookController : ControllerBase
    {
        private readonly MercadoPagoService _mercadoPagoservice;

        private readonly GiroDao _giroDao;

        private readonly string _webhookToken;

        private readonly EmailService _emailService;


        public WebhookController(
        MercadoPagoService mercadoPagoService,
        GiroDao giroDao, EmailService emailService,

        IConfiguration configuration)
        {
            _mercadoPagoservice = mercadoPagoService;
            _giroDao = giroDao;
            _emailService = emailService;

            _webhookToken = configuration["MercadoPago:WebhookToken"]
    ?? throw new InvalidOperationException("WebhookToken no configurado");

        }

        [HttpPost]

        [EnableRateLimiting("LimiteWebhook")]
        public async Task<IActionResult> RecibirWebhook(MercadoPagoWebhook mercadoPagoWebhook)
        {
            // Obtengo el token que llegó en la URL del webhook.
            string tokenRecibido = Request.Query["token"].ToString();

            // Comparo el token recibido con el guardado en User Secrets.
            if (tokenRecibido != _webhookToken)
            {
                return Unauthorized();
            }






            PagoMercadoPagoDao pagoMercadoPagoDao = new PagoMercadoPagoDao();

            // Identifico el tipo de notificación que manda Mercado Pago
            string? tipo = mercadoPagoWebhook.Type ?? mercadoPagoWebhook.Topic;


            // Obtengo el ID del pago desde Data
            string? pagoId = mercadoPagoWebhook.Data?.Id;

            // Si no viene en Data, lo obtengo desde Resource
            if (string.IsNullOrWhiteSpace(pagoId))
            {
                pagoId = mercadoPagoWebhook.Resource;
            }

            // Verifico que sea una notificación de pago
            if (tipo == "payment" && !string.IsNullOrWhiteSpace(pagoId))
            {
                // Si Resource es una URL, extraigo el último segmento
                if (Uri.TryCreate(pagoId, UriKind.Absolute, out Uri? uri))
                {
                    pagoId = uri.AbsolutePath.TrimEnd('/').Split('/').Last();
                }

                // Verifico que el ID sea numérico
                if (!long.TryParse(pagoId, out _))
                {
                    return BadRequest("ID de pago inválido.");
                }

                // Verifico si el pago ya fue procesado
                if (pagoMercadoPagoDao.PagoYaProcesado(pagoId))
                {
                    return Ok();
                }

                // Consulto el pago directamente a Mercado Pago
                MercadoPagoPago pago =
                    await _mercadoPagoservice.ObtenerPago(pagoId);

                
               


                if (pago.collector_id != await _mercadoPagoservice.ObtenerMiCollectorId()) 
                {
                    return Unauthorized();

                }

                // Verifico si Mercado Pago aprobó el pago
                if (pago.Status == "approved")
                {
                    int giroId = Convert.ToInt32(pago.ExternalReference);

                    Giro giro = _giroDao.BuscarGiro(giroId);

                    if (giro == null)
                    {
                        return BadRequest("El giro no existe");
                    }

                    if (pago.TransactionAmount != giro.MontoTotal)
                    {
                        return BadRequest("El monto pagado no coincide con el giro");
                    }




                    try
                    {
                        // Guardo el pago
                        pagoMercadoPagoDao.GuardarPago(
                            pagoId,
                            giroId,
                            pago.Status
                        );

                        // Marco el giro como pagado
                        _giroDao.MarcarComoPagado(giroId);

                        // Intento enviar el correo por separado
                        try
                        {
                            _emailService.ArmarCorreo(giro.EmailRemitente, giro);
                            _emailService.GuardaEmail();
                        }
                        catch (Exception ex)
                        {
                            // Si falla Gmail, el giro sigue pagado.
                            // Registramos el error para revisarlo.
                            Console.WriteLine("Error al enviar email: " + ex.Message);
                        }


                    }
                    catch (SqlException ex) when (ex.Number == 2627 || ex.Number == 2601)
                    {
                        // Compruebo que el pago ya esté guardado
                        if (pagoMercadoPagoDao.PagoYaProcesado(pagoId))
                        {
                            _giroDao.MarcarComoPagado(giroId);
                            return Ok();
                        }

                        throw;
                    }
                }

                // Confirmo que recibí la notificación
                return Ok();
            }

            return Ok();

        }




    }
}
