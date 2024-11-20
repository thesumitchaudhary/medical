<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addtocart.aspx.cs" Inherits="addtocart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .gridview-control
    {
        background:linear-gradient( to right , #bfea7c , #9bcf53 , #74e291);
     }
     . gridview-header-control
    {
        color:Black;
        background:linear-gradient( to right , #bfea7c , #9bcf53 , #74e291);
    }
    . gridview-footer-control{
        background:linear-gradient( to right , #bfea7c , #9bcf53 , #74e291);
    }   
    .gridview-commandfield-control{
        text-decoration:none;    
    }     
    </style>
</head>
<body>
   
     <form id="form2" runat="server">
    <div align="center" style="margin:0 auto">
       <h2 style="text-decoration:underline overline blink;color:#5f98f3;">
         You Have Following In Your Cart
       </h2><br />
       <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" Font-Bold="True" Font-Names="cambria" 
       NavigateUrl="~/All product.aspx">Continue Shopping</asp:HyperLink><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             BorderColor="#333333" BorderWidth="5px" CssClass="gridview-control"
            EmptyDataText="No Product Available in Your Cart" Font-Bold="True" 
            Height="325px" ShowFooter="True" Width="844px" 
            onrowdeleting="GridView1_RowDeleting" style="margin-left: 0px" 
            ForeColor="#333333" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
       
        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#FF6699" BorderColor="#333333" BorderWidth="5px" 
            EmptyDataText="No Product Available in Your Cart" Font-Bold="True" 
            Height="257px" ShowFooter="True" Width="800px" 
            onrowdeleting="GridView1_RowDeleting">--%>
            <Columns>
                <asp:BoundField  DataField="sno" HeaderText="Sr No" ControlStyle-CssClass="">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductId" HeaderText="Product ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Pimage" HeaderText="Product Image">
                    <ControlStyle Height="300px" Width="340px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Pdesc" HeaderText="description " />
                <asp:BoundField DataField="Pprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="tprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" 
                    ControlStyle-CssClass="gridview-commandfield-control">

<ControlStyle CssClass="gridview-commandfield-control"></ControlStyle>
                </asp:CommandField>
                <asp:CommandField DeleteText="Modify" ShowDeleteButton="True" 
                    ControlStyle-CssClass="gridview-commandfield-control">

<ControlStyle CssClass="gridview-commandfield-control"></ControlStyle>
                </asp:CommandField>
                <asp:BoundField />
            </Columns>
            <FooterStyle  CssClass="gridview-footer-control" ForeColor="#333333" />
            <HeaderStyle  CssClass="gridview-header-control" Font-Bold="True" 
                ForeColor="#333333" />
       <%-- </asp:GridView><br />--%>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Place Order" Height="38px" 
            style="font-weight: 700" Width="117px" onclick="Button1_Click" 
            BackColor="#3366CC" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
    </div>
     
     
     
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:bca %>" 
         SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
     
     
     
     <br />
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
         ConnectionString="<%$ ConnectionStrings:bca %>" 
         SelectCommand="SELECT * FROM [OrderDetails]"></asp:SqlDataSource>
     
     
     
    </form>
</body>
</html>
