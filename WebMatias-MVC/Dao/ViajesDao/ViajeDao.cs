using WebMatias_MVC.Models;

namespace WebMatias_MVC.Dao.ViajesDao
{
    public class ViajeDao
    {

        public List<Viajes>ListaViaje()
            
        {
            List<Viajes>listaviaje = new List<Viajes> ();

                Conexion conexion = new Conexion();

            try
            {
                conexion.SetearConsulta(@"
            SELECT 
                Id,
                Origen,
                Destino,
                Descripcion,
                Requisitos,
                DuracionAproximada,
                ImagenUrl AS UrlImagen,
                FechaActualizacion,
                Activo,
                HorarioSalida,
                Servicio,
                Precio
            FROM Viajes");

                conexion.EjecutarLectura();

                while (conexion.Lector().Read())
                {
                    Viajes aux = new Viajes();

                    aux.Id = (int)conexion.Lector()["Id"];

                    aux.Origen = (string)conexion.Lector()["Origen"];

                    aux.Destino = (string)conexion.Lector()["Destino"];

                    aux.Descripcion = (string)conexion.Lector()["Descripcion"];

                    aux.Requisitos = (string)conexion.Lector()["Requisitos"];

                    if (conexion.Lector()["DuracionAproximada"] != DBNull.Value)
                    {
                        aux.DuracionAproximada =
                            conexion.Lector()["DuracionAproximada"].ToString();
                    }

                    if (conexion.Lector()["UrlImagen"] != DBNull.Value)
                    {
                        aux.UrlImagen =
                            conexion.Lector()["UrlImagen"].ToString();
                    }
                    else
                    {
                        aux.UrlImagen = "";
                    }

                    aux.FechaActualizacion =
                        (DateTime)conexion.Lector()["FechaActualizacion"];

                    aux.Activo =
                        (bool)conexion.Lector()["Activo"];

                    if (conexion.Lector()["HorarioSalida"] != DBNull.Value)
                    {
                        aux.HorarioSalida =
                            (TimeSpan)conexion.Lector()["HorarioSalida"];
                    }

                    if (conexion.Lector()["Servicio"] != DBNull.Value)
                    {
                        aux.Servicio =
                            conexion.Lector()["Servicio"].ToString();
                    }
                    else
                    {
                        aux.Servicio = "";
                    }

                    if (conexion.Lector()["Precio"] != DBNull.Value)
                    {
                        aux.Precio =
                            Convert.ToDouble(conexion.Lector()["Precio"]);
                    }
                    else
                    {
                        aux.Precio = 0;
                    }

                    listaviaje.Add(aux);
                }

                return listaviaje;
            }
            catch (Exception)
            {

                throw;
            }
            finally { conexion.CerrarConexion(); }



         




        }
            

            






    }
}
