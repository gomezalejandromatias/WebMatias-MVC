using WebMatias_API.Models;
using Microsoft.Data.SqlClient;

namespace WebMatias_API.Dao.GiroDao
{
    public class GiroDao
    {

       

        public Giro BuscarGiro(int id)
        {
            Giro giro = null;
            Conexion conexion = new Conexion();

            try
            {
                conexion.SetearConsulta(
                    "SELECT GiroId, MontoTotal FROM Giros WHERE GiroId = @id"
                );

                conexion.SetearParametro("@id", id);

                conexion.EjecutarLectura();

                if (conexion.Lector().Read())
                {
                    giro = new Giro
                    {
                        GiroId = Convert.ToInt32(conexion.Lector()["GiroId"]),
                        MontoTotal = Convert.ToDecimal(conexion.Lector()["MontoTotal"])
                    };
                }

                return giro;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conexion.CerrarConexion();
            }
        }





    }

    public void MarcarComoPagado(int giroId)
        {
            Conexion conexion = new Conexion();

            try
            {
                conexion.SetearConsulta(
                    "UPDATE Giros SET EstadoPago = @estado WHERE GiroId = @id"
                );

                conexion.SetearParametro("@estado", "Pagado");
                conexion.SetearParametro("@id", giroId);

                conexion.EjecutarAccion();
            }
            finally
            {
                conexion.CerrarConexion();
            }
        }
    }
