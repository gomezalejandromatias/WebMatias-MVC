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
                    @"SELECT
                g.GiroId,
                g.FechaGiro,
                g.DniRemitente,
                g.NombreRemitente,
                g.TelefonoRemitente,
                g.EmailRemitente,
                g.NombreRecibe,
                g.CedulaRecibe,
                g.TelefonoRecibe,
                g.Alias,
                g.MontoEnvio,
                g.MontoMonedaExtranjera,
                g.MontoTotal,
                g.EstadoPago,
                g.TipoGiro,
                t.TiposGiro
              FROM Giros g
              LEFT JOIN TiposGiro t
                  ON g.TipoGiro = t.TiposGiroId
              WHERE g.GiroId = @id"
                );

                conexion.SetearParametro("@id", id);

                conexion.EjecutarLectura();

                if (conexion.Lector().Read())
                {
                    var lector = conexion.Lector();
                    giro = new Giro
                    {
                        GiroId = Convert.ToInt32(lector["GiroId"]),

                        FechaGiro = Convert.ToDateTime(lector["FechaGiro"]),

                        // Datos del remitente
                        DniRemitente = Convert.ToString(lector["DniRemitente"]) ?? "",
                        NombreRemitente = Convert.ToString(lector["NombreRemitente"]) ?? "",
                        TelefonoRemitente = Convert.ToString(lector["TelefonoRemitente"]) ?? "",
                        EmailRemitente = Convert.ToString(lector["EmailRemitente"]) ?? "",

                        // Datos del destinatario
                        NombreRecibe = Convert.ToString(lector["NombreRecibe"]) ?? "",
                        CedulaRecibe = Convert.ToString(lector["CedulaRecibe"]) ?? "",
                        TelefonoRecibe = Convert.ToString(lector["TelefonoRecibe"]) ?? "",

                        AliasRecibe = lector["Alias"] == DBNull.Value
                            ? null
                            : Convert.ToString(lector["Alias"]),

                        // Importes
                        MontoEnvio = Convert.ToDecimal(lector["MontoEnvio"]),
                        MontoMonedaExtranjera = Convert.ToDecimal(lector["MontoMonedaExtranjera"]),
                        MontoTotal = Convert.ToDecimal(lector["MontoTotal"]),

                        // Estado
                        Estado = Convert.ToString(lector["EstadoPago"]) ?? "",

                        // Tipo de giro
                        TipoGiroId = Convert.ToInt32(lector["TipoGiro"]),

                        TipoGiro = lector["TiposGiro"] == DBNull.Value
                            ? null
                            : new TipoGiro
                            {
                                TipoGiroId = Convert.ToInt32(lector["TipoGiro"]),
                                TipoGiroNombre = Convert.ToString(lector["TiposGiro"]) ?? ""
                            }
                    };
                }

                return giro;
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


}
