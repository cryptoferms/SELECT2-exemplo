using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SELECT2_exemplo
{
    public partial class ComboBoxPagina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conexao = ConfigurationManager.ConnectionStrings["meubanco"].ConnectionString;
            if (!Page.IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(conexao))
                {
                    var cmd = new SqlCommand("Select Id, Nome from TbLoja", con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataBind();
                }
            }
        }
    }
}