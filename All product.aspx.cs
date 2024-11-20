using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class All_Product : System.Web.UI.Page
{
    string s;
    SqlConnection con1=new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] != null)
        {
            Label4.Text = "--Logged in as--   " + Session["Email"].ToString();
            HyperLink1.Visible = false;
            Button1.Visible = true;
        }
        else
        {
            Label4.Text = "Hello you can Login here......" ;
            HyperLink1.Visible = true;
            Button1.Visible = false;

        }
    } 
   /* protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["addproduct"] = "true";
        if (e.CommandName == "AddToCart")
        {
            DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());

        }
    }*/


    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Session["addproduct"] = "true";
        if (e.CommandName == "AddToCart")
        {
            DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("addtocart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + list.SelectedItem.ToString());

        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from product where(pname like '%" +TextBox1.Text+"')",con1);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource= dt;
        DataList1.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Email"] == null)
        {
            //Response.Redirect("addtocart.aspx");
            Response.Redirect("Login1.aspx");
        }
     //   else
       // {
       //     Response.Redirect("Login1.aspx");
       // }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login1.aspx");
    }
    

     /*
     {
    string s;
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] != null)
        {
            Label4.Text = "Logged in as " + Session["Email"].ToString();
            HyperLink1.Visible = false;
            Button1.Visible = true;
        }
        else
        {
            Label4.Text = "Hello you can Login here...";
            HyperLink1.Visible = true;
            Button1.Visible = false;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from product where (pname like '%" + TextBox1.Text + "' )", con1);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();

        foreach (DataRow myRow in dt.Rows)
        {
            Label4.Text = myRow["ProductId"].ToString();

        }
    }


    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        Session["addproduct"] = "true";
        if (e.CommandName == "AddToCart")
        {
            DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("place_order.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton ln = (LinkButton)sender;
        string s = ln.ToolTip;
        Response.Redirect("Full_Detail.aspx?a="+s);
    }
}*/
      protected void LinkButton1_Click1(object sender, EventArgs e)
      {
          LinkButton ln = (LinkButton)sender;
          string s = ln.ToolTip;
          Response.Redirect("Full_Details.aspx?a=" + s);
      }
}
 
