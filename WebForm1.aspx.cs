using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace practica_sql
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conex = new SqlConnection("Data Source=localhost;Initial Catalog=Castillo_Gonzalo;Integrated Security=True");

        void ver()
        {
            SqlDataAdapter dapter = new SqlDataAdapter("select * from Gonzalo", conex);
           
            DataSet daset = new DataSet();
            dapter.Fill(daset);

            gdw1.DataSource = daset;
            DataBind();
        }

        
        protected void Page_Load(object sender, EventArgs e)
      
            {
                ver();
            }
        

       
        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            string sql = "insert into Gonzalo (Cod_boleto, Nombre_Ciudad, Pasajeros, Empresa, Fecha_Salida, Fecha_regreso) values (@cod, @nom, @psj, @emp, @fechs, @fechr)";

            using (SqlCommand cmd = new SqlCommand(sql, conex))
            {
                cmd.Parameters.AddWithValue("@cod", txtCod.Text);
                cmd.Parameters.AddWithValue("@nom", txtCiudad.Text);
                cmd.Parameters.AddWithValue("@psj", txtPasa.Text);
                cmd.Parameters.AddWithValue("@emp", txtEmpresa.Text);
                cmd.Parameters.AddWithValue("@fechs", txtSalida.Text);
                cmd.Parameters.AddWithValue("@fechr", txtRetorno.Text);

                conex.Open();
               int c =cmd.ExecuteNonQuery();
                if (c == 1) Response.Write("se creo con exito");
                ver();
                conex.Close();
            }
            
           
        }

      
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ver(); 
        }

        
        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string sql = "update Gonzalo set Nombre_Ciudad = @nom, Pasajeros = @psj, Empresa = @emp, Fecha_Salida = @fechs, Fecha_regreso = @fechr " +
                         "where Cod_boleto = @cod";

            using (SqlCommand cmd = new SqlCommand(sql, conex))
            {
                cmd.Parameters.AddWithValue("@cod", txtCod.Text);
                cmd.Parameters.AddWithValue("@nom", txtCiudad.Text);
                cmd.Parameters.AddWithValue("@psj", txtPasa.Text);
                cmd.Parameters.AddWithValue("@emp", txtEmpresa.Text);
                cmd.Parameters.AddWithValue("@fechs", txtSalida.Text);
                cmd.Parameters.AddWithValue("@fechr", txtRetorno.Text);

                conex.Open();
                cmd.ExecuteNonQuery();
                conex.Close();
            }

            ver();
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string sql = "delete from Gonzalo where Cod_boleto = @cod";

            using (SqlCommand cmd = new SqlCommand(sql, conex))
            {
              
                cmd.Parameters.AddWithValue("@cod", txtCod.Text);

                conex.Open();
                cmd.ExecuteNonQuery();
                conex.Close();
            }

            ver(); 
        }

    }
}