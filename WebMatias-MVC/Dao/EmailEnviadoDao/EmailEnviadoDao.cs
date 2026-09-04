using WebMatias_MVC.Models;

namespace WebMatias_MVC.Dao.EmailEnviadoDao
{
    public class EmailEnviadoDao
    {


           public void EmailEstado(EmailEnviado emailEnviado)
           {

              Conexion conexion = new Conexion();


            try
            {

                conexion.SetearConsulta(
                   @"INSERT INTO EmailsEnviados
      (
          GiroId,
          EmailDestino,
          FechaIntento,
          FechaEntrega,
          Estado,
          DetalleError,
          CantidadIntentos,
          IdMensajeProveedor
      )
      VALUES
      (
          @GiroId,
          @EmailDestino,
          @FechaIntento,
          @FechaEntrega,
          @Estado,
          @DetalleError,
          @CantidadIntentos,
          @IdMensajeProveedor
      )"
               );

                conexion.SetearParametro(
       "@GiroId",
       emailEnviado.GiroId
   );

                conexion.SetearParametro(
                    "@EmailDestino",
                    emailEnviado.EmailDestino
                );

                conexion.SetearParametro(
                    "@FechaIntento",
                    emailEnviado.FechaIntento
                );

                conexion.SetearParametro(
                    "@FechaEntrega",
                    emailEnviado.FechaEntrega ?? (object)DBNull.Value
                );

                conexion.SetearParametro(
                    "@Estado",
                    emailEnviado.Estado
                );

                conexion.SetearParametro(
                    "@DetalleError",
                    emailEnviado.DetalleError ?? (object)DBNull.Value
                );

                conexion.SetearParametro(
                    "@CantidadIntentos",
                    emailEnviado.CantidadIntentos
                );

                conexion.SetearParametro(
                    "@IdMensajeProveedor",
                    emailEnviado.IdMensajeProveedor ?? (object)DBNull.Value
                );

                conexion.EjecutarAccion();



            }
            catch (Exception)
            {

                throw;
            }


            finally { conexion.CerrarConexion(); }



           }



    }
}
