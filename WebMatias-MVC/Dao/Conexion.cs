using System.Data;
using Microsoft.Data.SqlClient;
namespace WebMatias_MVC.Dao
{
    public class Conexion
    {

        SqlConnection conexion;
        SqlCommand comando;

        SqlDataReader lector;
        


        public SqlDataReader Lector()
        {

            return lector;


        }


        public Conexion ()
        {


            string cadenaConexion = "Server=localhost;Database=WebPersonalDB;Trusted_Connection=True;TrustServerCertificate=True;";

            conexion = new SqlConnection (cadenaConexion);

            comando = new SqlCommand();


        }

        public void EjecutarLectura()
        {


            comando.Connection = conexion;
            conexion.Open();
            lector = comando.ExecuteReader();


        }

        public void SetearConsulta(string  consulta)
        {

            comando.CommandType = CommandType.Text;
            comando.CommandText = consulta;



        }

        public void CerrarConexion()
        {
            if (lector != null && !lector.IsClosed)
            {
                lector.Close();
            }

            if (conexion != null && conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }



        }

        public void EjecutarAccion()
        {
            comando.Connection = conexion;
            conexion.Open();
            comando.ExecuteNonQuery();
        }

        public void SetearParametro(string nombre, object valor)
        {
            comando.Parameters.AddWithValue(nombre, valor);
        }

       








    }
}
