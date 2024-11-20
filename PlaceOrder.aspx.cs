using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PlaceOrder : System.Web.UI.Page
{
 
  //  SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\chaud\Desktop\project11\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlConnection con =new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\all docs\project11\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into CardDetails " + "(Fname,Lname,CardNo,ExpiryDate,CVV,BillingAddr) values(@Fname,@Lname,@CardNo,@ExpiryDate,@CVV,@BillingAddr)", con);
        cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
        cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
        cmd.Parameters.AddWithValue("@CVV", TextBox5.Text);
        cmd.Parameters.AddWithValue("@BillingAddr", TextBox6.Text);
        cmd.ExecuteNonQuery();

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        Session["address"] = TextBox6.Text;
        Response.Redirect("Pdf_genarate.aspx");
    }
}