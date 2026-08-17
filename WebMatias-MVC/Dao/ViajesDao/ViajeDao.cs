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


                conexion.SetearConsulta(@"SELECT Id,Origen,Destino,Descripcion,Requisitos,DuracionAproximada,UrlImagen,FechaActualizacion,Activo,HorarioSalida FROM Viajes");

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
                            (string)conexion.Lector()["DuracionAproximada"];
                    }

                    if (conexion.Lector()["UrlImagen"] != DBNull.Value)
                    {
                        aux.UrlImagen = (string)conexion.Lector()["UrlImagen"];
                    }

                    aux.FechaActualizacion =
                        (DateTime)conexion.Lector()["FechaActualizacion"];

                    aux.Activo = (bool)conexion.Lector()["Activo"];

                    if (conexion.Lector()["HorarioSalida"] != DBNull.Value)
                    {
                        aux.HorarioSalida = (TimeSpan)conexion.Lector()["HorarioSalida"];
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
