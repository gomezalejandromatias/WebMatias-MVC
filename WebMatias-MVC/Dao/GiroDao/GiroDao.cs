using WebMatias_MVC.Models;

namespace WebMatias_MVC.Dao.GiroDao
{
    public class GiroDao
    {

           public void GuardarGiro(Giro giro)
           {
                  
                Conexion conexion = new Conexion();
               

            try
            {

                conexion.SetearConsulta(
         @"INSERT INTO Giros
            (
                FechaGiro,
                NombreRemitente,
                TelefonoRemitente,
                NombreRecibe,
                TelefonoRecibe,
                MontoEnvio,
                MontoMonedaExtranjera,
                MontoTotal,
                TipoGiro,
                CambioExtranjero,
                ComisionAgencia,
                ComisionSistema
            )
            VALUES
            (
                @FechaGiro,
                @NombreRemitente,
                @TelefonoRemitente,
                @NombreRecibe,
                @TelefonoRecibe,
                @MontoEnvio,
                @MontoMonedaExtranjera,
                @MontoTotal,
                @TipoGiro,
                @CambioExtranjero,
                @ComisionAgencia,
                @ComisionSistema
            )"
     );

                conexion.SetearParametro("@FechaGiro", giro.FechaGiro);
                conexion.SetearParametro("@NombreRemitente", giro.NombreRemitente);
                conexion.SetearParametro("@TelefonoRemitente", giro.TelefonoRemitente);
                conexion.SetearParametro("@NombreRecibe", giro.NombreRecibe);
                conexion.SetearParametro("@TelefonoRecibe", giro.TelefonoRecibe);
                conexion.SetearParametro("@MontoEnvio", giro.MontoEnvio);
                conexion.SetearParametro(
                    "@MontoMonedaExtranjera",
                    giro.MontoMonedaExtranjera
                );
                conexion.SetearParametro("@MontoTotal", giro.MontoTotal);
                conexion.SetearParametro("@TipoGiro", giro.TipoGiroId);
                conexion.SetearParametro("@CambioExtranjero", giro.CambioExtranjero);
                conexion.SetearParametro("@ComisionAgencia", giro.ComisionAgencia);
                conexion.SetearParametro("@ComisionSistema", giro.ComisionSistema);

                conexion.EjecutarAccion();

            }
            catch (Exception )
            {

                throw ;
            }
            finally { conexion.CerrarConexion();  }
             
                 





           }





    }
}
