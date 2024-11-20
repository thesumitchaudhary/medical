<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pdf_genarate.aspx.cs" Inherits="Pdf_genarate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <div align="center" style="background-color:#E8E8E8">
    
        <asp:Button ID="Button1" runat="server" Text="Download Invoice" 
            onclick="Button1_Click" />
        <br />
        <br />
        <div align="left">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home1.aspx" 
            Font-Bold="True" Font-Italic="False" Font-Underline="False" 
                ForeColor="#252525">Go To Home Page</asp:HyperLink>
        </div>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <table class="style1" bgcolor="#E8E8E8">
                <tr>
                    <td height="120px">
                        <h2>Retail Invoice</h2></td>
                </tr>
                <tr>
                    <td class="style2" height="120px">
                       <b>Order No. : </b>
                       <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        <b>Order Date : </b>
                        <br />
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td height="120px">
                        <table class="style1">
                            <tr>
                                <td>
                                    <b>Buyer Address : </b></td>
                                <td>
                                    <asp:Label ID="Label3" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Seller Address : </b></td>
                                <td>
                                    Palanpur.</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="120px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            ShowFooter="True">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="SNo">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productid" HeaderText="Product ID">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productname" HeaderText="Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="quantity">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tprice" HeaderText="Total Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td height="120px">
                        <b>Grand Total : </b>
                        <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td height="120px">
                        <h3><b><i>This is a computer generated invoice
                        and does not required signature.</i></b></h3>
                        
                        </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
