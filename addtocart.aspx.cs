using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addtocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("ProductId");
                dt.Columns.Add("Pname");
                dt.Columns.Add("Pimage");
                dt.Columns.Add("Pdesc");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("Pprice");
                dt.Columns.Add("tprice");
               

                if (Request.QueryString["id"] != null)
                {
                    if (Session["items"] == null)
                    {
                        dr = dt.NewRow();

                        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);

                        string qry = "select * from product where ProductId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = qry;
                        cmd.Connection = cn;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["ProductId"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["Pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Pprice"].ToString());
                        int qty = Convert.ToInt32(Request.QueryString["Quantity"]);
                        int tprice = price * qty;
                        dr["tprice"] = tprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["items"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["items"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();

                        SqlConnection cn= new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);
                        string qry = "select * from product where ProductId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = qry;
                        cmd.Connection = cn;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["ProductId"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["Pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Pprice"].ToString());
                        int qty = Convert.ToInt32(Request.QueryString["Quantity"]);
                        int tprice = price * qty;
                        dr["tprice"] = tprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["items"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["items"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
            }
        Orderid();
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["items"];
            int nrows = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrows)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["tprice"].ToString());
                i = i + 1;
            }
            return gtotal;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["items"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if(sr==sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for(int i=1;i<=dt.Rows.Count;i++)
            {
                dt.Rows[i-1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["items"] = dt;
            Response.Redirect("addtocart.aspx");
        }

        public void Orderid()
        {
            string alpha = "abcDefGhiJklmnOpqRStuvwxYZ1234567890";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];
            }
            string Orderid;
            Orderid = "Order_Id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["Orderid"] = Orderid;
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {

            DataTable dt;
            dt = (DataTable)Session["items"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);
                scon.Open();
                SqlCommand cmd = new SqlCommand("insert into OrderDetails(orderid,sno,productid,productname,price,quantity,orderdate)values('" + Session["Orderid"] + "','" + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["productid"] + "','" + dt.Rows[i]["pname"] + "','" + dt.Rows[i]["pprice"] + "','" + dt.Rows[i]["Quantity"] + "','" + Session["Orderdate"] + "')", scon);
                cmd.ExecuteNonQuery();
                scon.Close();
            }

            if (Session["Email"] == null)
            {
                Response.Redirect("Login1.aspx");
            }
            else
            {
                if (GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('your cart is empty. you cannot place an order');</script>");

                }

                else
                {
                    Response.Redirect("PlaceOrder.aspx");
                }

            }
        }
        
        /*   if(Session["Email"]!=null)
            {
                Response.Redirect("PlaceOrder.aspx");
                   
            }
            else
            {
                Response.Redirect("Login1.aspx");
            }*/

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
        }
}

