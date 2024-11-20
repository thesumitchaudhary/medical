﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
    <table align="center" style="margin-top:50px; width:631px; height:663px"; bgcolor="DarkCyan">
    <tr>
    <td colspan="2" align="center" style="vertical-align:top">
        <asp:Label ID="Label1" runat="server" Text="card details" Font-Bold="true" Font-Size="XX-Large" ForeColor="White"></asp:Label>
    </td>
    </tr>
    <tr>
     <td align="center" style="vertical-align:top">
         <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="true" Font-Size="Medium" Height="44px" Width="188px" placeholder="First name"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name is empty" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="First Name is Must be characters" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
         </td>
     <td align="center" style="vertical-align:top">
        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="true" Font-Size="Medium" Height="44px" Width="188px" placeholder="Last name"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name is empty" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Last Name is Must be characters" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
     </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
          <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="2px" ImageUrl="~/images/payment_page_photos.jpg" Width="438px" />
      </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Label ID="Label2" runat="server" Text="Card Number" Font-Bold="true" Font-Size="Large" ForeColor="White"></asp:Label>
    </td>
    </tr>
    <tr>
      <td align="center" style="vertical-align:top">
          <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="true" Font-Size="Medium" Height="44px" Width="188px" placeholder="16 Digits" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Card Number is Empty" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Card Number is Must be 16 Digits" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
      </td>
    </tr>
    <tr>
    <td align="center">
        <asp:Label ID="Label3" runat="server" Text="Expiry Date"  Font-Bold="true" Font-Size="Large" ForeColor="White"></asp:Label>
    </td>
    <td align="center" >
        <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="true" Font-Size="Large" ForeColor="White"></asp:Label>
    </td>
    </tr>
    <tr>
    <td align="center" style="vertical-align:top">
      <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="true" Font-Size="Medium" Height="44px" Width="188px" placeholder="MM/YY (EG:061996)" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Expiry Date is Empty" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
         </td>
    <td align="center" style="vertical-align:top">
         <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="true" Font-Size="Medium" Height="44px" Width="188px" placeholder="3 Digits" ></asp:TextBox>
   
   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CVV is Empty" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="CVV NO Must Be 3 Digits" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>       
          </td>
    </tr>
    <tr>
    <td colspan="2" align="center" style="vertical-align:top">
     <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="true" Font-Size="X-Large" Height="50px" Width="442px" placeholder="Billing Address" TextMode="MultiLine"></asp:TextBox>

     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is Empty" ControlToValidate="TextBox6" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center"">
        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" 
            BorderColor="White" BorderWidth="2px" Font-Bold="true" Font-Size="Large" 
            ForeColor ="White" Height="44px" Width="188px" onclick="Button1_Click"  />

    </td>
    </tr>
    <tr>
    
    <td colspan="2">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" ForeColor="Red" HeaderText="fix the follwing Errors" />
    
    </td>
    </tr>
    <tr>
    <td colspan="2">
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            ForeColor ="#6600FF" NavigateUrl="~/addtocart.aspx">Previous page</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
            ForeColor="#6600FF" NavigateUrl="~/Home1.aspx">Home Page</asp:HyperLink>
    </td>
    </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
