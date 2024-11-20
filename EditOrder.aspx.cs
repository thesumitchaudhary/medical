using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class EditOrder : System.Web.UI.Page
{
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
{

}
else
{
if(Request.QueryString["sno"] !=null)
{
   dt = (DataTable)Session["item"];
   for(int i=0;i<=dt.Rows.Count-1;i++)
   { 
 	int sr;
	int sr1;
    sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
    Label3.Text = Request.QueryString["sno"];
	Label4.Text = sr.ToString();
	sr1 = Convert.ToInt32(Label3.Text);

		
	if(sr == sr1)
	{
		Label3.Text = dt.Rows[i]["sno"].ToString();
		Label4.Text = dt.Rows[i]["Productid"].ToString();
        Label5.Text = dt.Rows[i]["Pname"].ToString();
		DropDownList1.Text =dt.Rows[i]["Quantity"].ToString();
		Label6.Text = dt.Rows[i]["Pprice"].ToString();
		Label7.Text = dt.Rows[i]["TotalPrice"].ToString();

		break;
	      }
	    }
	 }
	 else
	 {
	 }
        
    }
    }
    
protected void  DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
{
    int q;
	q = Convert.ToInt32(DropDownList1.Text);
	int cost;
	cost = Convert.ToInt32(Label6.Text);

    int totalcost = cost * q ;
	Label7.Text = totalcost.ToString();
}


protected void  Button1_Click(object sender, EventArgs e)
{
    dt = (DataTable)Session["item"];

	for(int i=0;i<=dt.Rows.Count-1;i++)
	{
	    int sr;
	    int sr1;
        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
	    sr1 = Convert.ToInt32(Label3.Text);

	    if(sr == sr1)
	    {
		dt.Rows[i]["sno"] = Label3.Text;
		dt.Rows[i]["Productid"] = Label4.Text;
		dt.Rows[i]["Pname"] = Label5.Text;

		dt.Rows[i]["Quantity"] = DropDownList1.Text;
		dt.Rows[i]["Pprice"] = Label6.Text;
		dt.Rows[i]["totalprice"] = Label7.Text;

		break;
	      }
	   }
	   Response.Redirect("AddtoCart.aspx");
}
}