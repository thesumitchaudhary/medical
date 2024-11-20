<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="EditOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style1
    {
        width:45%;
        height:382px;
    }
    .auto-style2
    {
        width:136px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <strong>
        <asp:Label ID="Label1" runat="server" Text="life care medical store"></asp:Label>
    </strong>
    <br />
    <br />
        <asp:Label ID="Label2" runat="server" Text="Modify cart"></asp:Label>
        <br />
        <br />
        <table border="1" class="auto-style1" style="background-color:#CC99FF">
        <tr>
        <td class="auto-style2">SNO</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
         <tr>
        <td class="auto-style2">Medicines Id</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
        <tr>
         <td class="auto-style2">Medicines Name</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
        <tr>
         <td class="auto-style2">price</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
        <tr>
         <td class="auto-style2">Quantity</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
         <tr>
         <td class="auto-style2">Total Price</td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
         <tr>
         <td class="auto-style2">&nbsp</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Save"  Height="39px" Width="93px" 
                onclick="Button1_Click" />
        </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
