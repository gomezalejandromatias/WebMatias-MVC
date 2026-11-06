using Microsoft.Data.SqlClient;
using System.Data;

namespace WebMatias_API.Dao
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


        public Conexion()
        {

            var configuracion = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json", optional: true)
                .AddEnvironmentVariables()
                .Build();

            string cadenaConexion = configuracion
                .GetConnectionString("WebPersonalDB")
                ?? throw new Exception("No se encontró la cadena de conexión.");

            conexion = new SqlConnection(cadenaConexion);
            comando = new SqlCommand();


        }

        public void EjecutarLectura()
        {


            comando.Connection = conexion;
            conexion.Open();
            lector = comando.ExecuteReader();


        }

        public void SetearConsulta(string consulta)
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
