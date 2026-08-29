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
            Server.Credentials = new NetworkCredential("mati.gorriti1@gmail.com","rssdmnlvglwlyytq");
            Server.EnableSsl = true;
            Server.Port = 587;
            Server.Host = "smtp.gmail.com";
        }


        public void ArmarCorreo (string emaildestino,Giro giro)
        {
            
            Email = new MailMessage();
             Email.From = new MailAddress("mati.gorriti1@gmail.com");
            Email.To.Add(emaildestino);
            Email.Bcc.Add("mati.gorriti1@gmail.com");
            //  Email.Subject = asunto;
            Email.IsBodyHtml = true;
            Email.Body = $@"
    <h1>Solicitud de giro registrada</h1>

    <p>Hola, <strong>{giro.NombreRemitente}</strong>.</p>

    <p>Tu solicitud fue registrada correctamente.</p>

    <h2>Datos del giro</h2>

    <p><strong>Persona que recibe:</strong> {giro.NombreRecibe}</p>
    <p><strong>Teléfono:</strong> {giro.TelefonoRecibe}</p>
    <p><strong>Monto enviado:</strong> ${giro.MontoEnvio:N2}</p>
   
    <p><strong>Monto que recibe:</strong> {giro.MontoMonedaExtranjera:N2}</p>
    <p><strong>Total:</strong> ${giro.MontoTotal:N2}</p>
    <p><strong>Fecha:</strong> {giro.FechaGiro:dd/MM/yyyy HH:mm}</p>

    <p>Nos comunicaremos en caso de que sea necesario.</p>
";


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
