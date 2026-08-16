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


                conexion.SetearConsulta("");


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
                            (string)conexion.Lector()["DuracionAproximada"];
                    }

                    if (conexion.Lector()["ImagenUrl"] != DBNull.Value)
                    {
                        aux.UrlImagen = (string)conexion.Lector()["ImagenUrl"];
                    }

                    aux.FechaActualizacion =
                        (DateTime)conexion.Lector()["FechaActualizacion"];

                    aux.Activo = (bool)conexion.Lector()["Activo"];

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
