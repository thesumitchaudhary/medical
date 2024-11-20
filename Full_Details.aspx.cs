using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Full_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Request.QueryString["a"];
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from product where ProductId='" + s + "'");
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Image18.ImageUrl = dr["Pimage"].ToString();
            Label2.Text = dr["ProductId"].ToString();
            Label3.Text = dr["Pprice"].ToString();
            Label4.Text = dr["Pname"].ToString();
            Label5.Text = dr["Pdesc"].ToString();
        }
    }
}