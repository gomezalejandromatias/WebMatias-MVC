using WebMatias_MVC.Models;

namespace WebMatias_MVC.Dao.TipoGiroDao
{
    public class TipoGiroDao
    {

          public List<TipoGiro> listaTipoGiro()
          {
            List<TipoGiro>lista = new List<TipoGiro>();


            Conexion conexion = new Conexion();


            try
            {
                conexion.SetearConsulta("select *from TiposGiro");

                conexion.EjecutarLectura();

                while (conexion.Lector().Read())
                {
                    TipoGiro aux = new TipoGiro();


                    aux.TipoGiroId = (int)conexion.Lector()["TiposGiroId"];
                    aux.TipoGiroNombre = (string)conexion.Lector()["TiposGiro"];

                    lista.Add(aux);


                }
                return lista;



            }
            catch (Exception)
            {

                throw;
            }
            finally { conexion.CerrarConexion();  }




           
          }


    }
}
