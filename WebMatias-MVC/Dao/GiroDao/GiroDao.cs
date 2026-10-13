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
                TipoGiroId,
                CambioExtranjero,
                ComisionAgencia,
                ComisionSistema,
                DniRemitente,
                EmailRemitente,
                CedulaRecibe,
                AliasRecibe
            )
                  
                     OUTPUT INSERTED.GiroId
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
                @TipoGiroId,
                @CambioExtranjero,
                @ComisionAgencia,
                @ComisionSistema,
                @DniRemitente,
                @EmailRemitente,
                @CedulaRecibe,
                @AliasRecibe
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
                conexion.SetearParametro("@TipoGiroId", giro.TipoGiroId);
                conexion.SetearParametro("@CambioExtranjero", giro.CambioExtranjero);
                
                conexion.SetearParametro("@ComisionAgencia", giro.ComisionAgencia);
                conexion.SetearParametro("@ComisionSistema", giro.ComisionSistema);
                conexion.SetearParametro("@DniRemitente", giro.DniRemitente);
                conexion.SetearParametro("@EmailRemitente", giro.EmailRemitente);
                conexion.SetearParametro("@CedulaRecibe", giro.CedulaRecibe);
                // Si no hay alias, enviamos NULL a SQL.
                conexion.SetearParametro(
                    "@AliasRecibe",
                    (object?)giro.AliasRecibe ?? DBNull.Value);


                conexion.EjecutarLectura();

                if (conexion.Lector().Read())
                {
                    giro.GiroId =
                        (int)conexion.Lector()["GiroId"];
                }
                else
                {
                    throw new Exception(
                        "El giro se guardó, pero no se pudo recuperar su ID."
                    );
                }

            }
            catch (Exception )
            {

                throw ;
            }
            finally { conexion.CerrarConexion();  }



            ///ME DEVUELVE EL ID GENERADO DESDE LA BASE
          ///  OUTPUT INSERTED.GiroId


           }





    }
}
