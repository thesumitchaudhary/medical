using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default111 : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con1.Open();

        SqlCommand cmd = new SqlCommand("insert into regester " + "(Fname,Lname,Email,Gender,Address,Phone,Password) values (@Fname,@Lname,@Email,@Gender,@Address,@Phone,@Password)", con1);

        cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox6.Text);

        cmd.ExecuteNonQuery();
        con1.Close();

        Response.Write("<script>alert('registration successfully');</script>");


        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList1.SelectedItem.Value = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
}