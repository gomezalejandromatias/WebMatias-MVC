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


          public TipoGiro? BuscarTipoGiroId(int id)
          {

            Conexion conexion = new  Conexion();

            try
            {
                conexion.SetearConsulta(@"SELECT TiposGiroId, TiposGiro FROM TiposGiro WHERE TiposGiroId = @TiposGiroId");

                conexion.SetearParametro("@TiposGiroId", id);

                conexion.EjecutarLectura();



                if (conexion.Lector().Read())
                {
                    TipoGiro tipoGiroEncontrado = new TipoGiro();

                    tipoGiroEncontrado.TipoGiroId =
                        (int)conexion.Lector()["TiposGiroId"];

                    tipoGiroEncontrado.TipoGiroNombre =
                        conexion.Lector()["TiposGiro"].ToString()!;

                    return tipoGiroEncontrado;
                }


                return null;





            }
            catch (Exception)
            {

                throw;
            }

            finally {conexion.CerrarConexion();  }

              




 
          }

    }
}
