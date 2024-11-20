<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.style02
{
 margin-top:100px;   
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style02" style=" width:700px; height:390px; background-color:#5f98f3"  align="center">
<tr>
  <td align="center" width="50%" colspan="2">
    <h1>Adding Product</h1>
  </td>
</tr>
<tr>
  <td align="center" width="50%">
     <h3>Product Id:</h3>
  </td>
  <td width="50%">
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
  </td>
</tr>
<tr>
  <td align="center" width="50%">
      <h3>Product Name:</h3>
  </td>
  <td width="50%">
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  </td>
</tr>
<tr>
  <td align="center" width="50%">
       <h3>Product Desc:</h3>
  </td>
  <td width="50%">
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
  </td>
</tr>
<tr>
  <td align="center" width="50%">
   <h3>Image:</h3>
  </td>
  <td width="50%"> 
      <asp:FileUpload ID="FileUpload1" runat="server" />
      </td>
</tr>
<tr>
 <td align="center" width="50%">
       <h3>Product Price:</h3>
 </td>
 <td width="50%">
     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
  </td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true" 
        ForeColor="Black" Height="36px" Width="88px" onclick="Button1_Click"  />
</td>
</tr>
<tr>
 <td align="center" width="50%" colspan="2">
 
     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:bca %>" 
         SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    </td>
</tr>
</table>
</asp:Content>

