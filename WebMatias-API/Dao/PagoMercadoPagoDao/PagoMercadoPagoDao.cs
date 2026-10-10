namespace WebMatias_API.Dao.PagoMercadoPagoDao
{



    public class PagoMercadoPagoDao
    {
        public bool PagoYaProcesado(string pagoId)
        {
            Conexion conexion = new Conexion();

            try
            {
                conexion.SetearConsulta(
                    "SELECT COUNT(*) FROM PagosMercadoPago WHERE IdPagoProveedor = @PagoId"
                );

                conexion.SetearParametro("@PagoId", pagoId);

                conexion.EjecutarLectura();

                if (conexion.Lector().Read())
                {
                    int cantidad = Convert.ToInt32(conexion.Lector()[0]);

                    return cantidad > 0;
                }

                return false;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                conexion.CerrarConexion();
            }
        }


        public void GuardarPago(string pagoId, int giroId, string estado)
        {
            Conexion conexion = new Conexion();

            try
            {
                conexion.SetearConsulta(
                    @"INSERT INTO PagosMercadoPago
              (PaymentId, GiroId, Estado)
              VALUES
              (@PagoId, @GiroId, @Estado)"
                );

                conexion.SetearParametro("@PaymentId",pagoId);
                conexion.SetearParametro("@GiroId", giroId);
                conexion.SetearParametro("@Estado", estado);

                conexion.EjecutarAccion();
            }
            finally
            {
                conexion.CerrarConexion();
            }
        }

        public string BuscarEstadoPago(int giroId)
        {
            Conexion conexion = new Conexion();

            try
            {
                conexion.SetearConsulta(
                    "SELECT Estado FROM PagosMercadoPago WHERE GiroId = @GiroId"
                );

                conexion.SetearParametro("@GiroId", giroId);

                conexion.EjecutarLectura();

                if (conexion.Lector().Read())
                {
                    return conexion.Lector()["Estado"].ToString();
                }

                return "SinRegistro";
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                conexion.CerrarConexion();
            }

        }
    }


}
