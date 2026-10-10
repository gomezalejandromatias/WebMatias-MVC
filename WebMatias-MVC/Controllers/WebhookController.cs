using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebMatias_MVC.Controllers
{

    [ApiController]
    [Route("api/Webhook")]
    public class WebhookController : Controller
    {


        private readonly HttpClient _httpClient;

        public WebhookController(IHttpClientFactory httpClientFactory)
        {
            _httpClient = httpClientFactory.CreateClient("WebhookApi");
        }

        [HttpPost]
        public async Task<IActionResult> Recibir()
        {
            using var contenido = new MemoryStream();

            await Request.Body.CopyToAsync(contenido);

            using var solicitud = new HttpRequestMessage(
                HttpMethod.Post,
                "api/Webhook" + Request.QueryString
            );

            solicitud.Content = new ByteArrayContent(contenido.ToArray());

            if (!string.IsNullOrEmpty(Request.ContentType))
            {
                solicitud.Content.Headers.TryAddWithoutValidation(
                    "Content-Type", Request.ContentType
                );
            }

            foreach (var nombre in new[] { "x-signature", "x-request-id" })
            {
                if (Request.Headers.TryGetValue(nombre, out var valor))
                {
                    solicitud.Headers.TryAddWithoutValidation(
                        nombre, valor.ToArray()
                    );
                }
            }

            using var respuesta = await _httpClient.SendAsync(solicitud);

            return StatusCode((int)respuesta.StatusCode);
        }

        // GET: WebhookController
        public ActionResult Index()
        {
            return View();
        }

        // GET: WebhookController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: WebhookController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: WebhookController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: WebhookController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: WebhookController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: WebhookController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: WebhookController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
