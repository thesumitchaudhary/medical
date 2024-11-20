using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login1 : System.Web.UI.Page
{
    SqlConnection con4 = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con4.Open();
        SqlCommand cmd1 = new SqlCommand("select Email,Password from regester where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'");
        cmd1.Connection = con4;
       SqlDataReader dr = cmd1.ExecuteReader();

        

        if (TextBox1.Text == "Admin@gmail.com" & TextBox2.Text == "1380")
        {
            Session["admin"] = TextBox1.Text;
            Response.Redirect("~/admin/admin1.aspx");
        }
        else if (dr.HasRows)
        {
            Session["Email"] = TextBox1.Text;
            Response.Redirect("All product.aspx");

        }
        else
        {
            Response.Write("<script>alert('login unsuccessfully.....,please try again')</script>");
        }
       /* if (dr.HasRows)
        {
            Session["Email"] = TextBox1.Text;
            Session["Password"] = TextBox2.Text;

             /* Response.Write("<script>alert('login successfully.....')</script>");
              System.Threading.Thread.Sleep(3000);*/
           // Response.Redirect("Home1.aspx");
            /* redirect not soure
        }
        else
        {
            Response.Write("<script>alert('login unsuccessfully.....,please try again')</script>");
        }*/
        TextBox1.Text = " ";
        TextBox2.Text = " ";
    }
}
