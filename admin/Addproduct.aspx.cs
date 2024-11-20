using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "images/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);

            con3.Open();
            SqlCommand cmd3 = new SqlCommand("Insert into product values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + filepath + "','" + TextBox4.Text + "')", con3);
            cmd3.ExecuteNonQuery();
            con3.Close();
            Response.Redirect("<script>alert('medicines upload successfully.....  ');</script>");
            Response.Redirect("~/admin/admin1.aspx");
        }
    }
}