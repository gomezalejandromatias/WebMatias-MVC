using System.Net;
using System.Net.Mail;
using WebMatias_MVC.Models;

namespace WebMatias_MVC.Service
{
    public class EmailService
    {
        private MailMessage Email;

        private SmtpClient Server;

        public EmailService()
        {
            Server = new SmtpClient();
            Server.Credentials = new NetworkCredential("mati.gorriti1@gmail.com", "rssdmnlvglwlyytq");
            Server.EnableSsl = true;
            Server.Port = 587;
            Server.Host = "smtp.gmail.com";
        }


        public void ArmarCorreo(string emailDestino, Giro giro)
        {
            Email = new MailMessage();

            Email.From = new MailAddress("mati.gorriti1@gmail.com");
            Email.To.Add(emailDestino);
            Email.Bcc.Add("mati.gorriti1@gmail.com");

            Email.Subject = "Comprobante de solicitud de giro";

            Email.IsBodyHtml = true;

            Email.Body = $@"
    <div style='font-family: Arial, sans-serif; max-width: 650px; margin: auto;'>

        <h1 style='color:#333;'>Solicitud de giro registrada</h1>

        <p>
            Hola <strong>{giro.NombreRemitente}</strong>,
            tu solicitud de giro fue registrada correctamente.
        </p>

        <hr>

        <h2>Datos de quien envía</h2>

        <p>
            <strong>Nombre y apellido:</strong>
            {giro.NombreRemitente}
        </p>

        <p>
            <strong>Cédula:</strong>
            {giro.DniRemitente}
        </p>

        <p>
            <strong>Teléfono:</strong>
            {giro.TelefonoRemitente}
        </p>


        <hr>

        <h2>Datos de quien recibe</h2>

        <p>
            <strong>Nombre y apellido:</strong>
            {giro.NombreRecibe}
        </p>

        <p>
            <strong>Cédula:</strong>
            {giro.CedulaRecibe}
        </p>

        <p>
            <strong>Teléfono:</strong>
            {giro.TelefonoRecibe}
        </p>


        <hr>

        <h2>Detalle del giro</h2>

        <p>
            <strong>Monto enviado:</strong>
            ${giro.MontoEnvio:N2}
        </p>

        <p>
            <strong>Total abonado:</strong>
            ${giro.MontoTotal:N2}
        </p>

        <p>
            <strong>Monto que recibe en Paraguay:</strong>
            ₲ {giro.MontoMonedaExtranjera:N0}
        </p>

        <p>
            <strong>Fecha del giro:</strong>
            {giro.FechaGiro:dd/MM/yyyy HH:mm}
        </p>

        <hr>

        <p>
            La operación quedó registrada correctamente.
            Nos comunicaremos contigo en caso de ser necesario.
        </p>

        <p>
            Gracias por utilizar nuestro servicio.
        </p>

    </div>";
        }

        public void GuardaEmail()
        {

            try
            {

                Server.Send(Email);


            }
            catch (Exception ex)
            {

                throw ex;
            }



        }







    }
}
