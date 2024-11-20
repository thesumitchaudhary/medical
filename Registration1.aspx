<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Registration1.aspx.cs" Inherits="Default111" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.h1
{
    diaplay:flex;
    jusify-content:center;
    text-align:center;
}
.auto-style11
{
  width:700px;
  height:753px;   
}
.colors
{
 color:white;
}
    .style01
    {
        width: 48%;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-image:url('images/Reg2.jpg')">
  <table align="center" class="auto-style11" border="2">
     <tr>
        <td colspan="2">
          <h1 class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration Form</h1>        
        </td>

     </tr>
         <tr>
        <td class="style01">
        <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name:</b>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="325px" 
                BorderStyle="Solid" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="First Name is empty" ControlToValidate="TextBox1" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
     </tr> 
         <tr>
        <td class="style01">
         <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:</b>
        </td>
        <td>
           <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="325px" 
                EnableTheming="True" Font-Bold="True" Font-Size="Larger"></asp:TextBox>    
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="First Name is empty" ControlToValidate="TextBox2" 
                ForeColor="Red">*</asp:RequiredFieldValidator>    
        </td>
     </tr> 
         <tr>
        <td class="style01">
           <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email_ID:</b>
        </td>
        <td>
           <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="325px" 
                Font-Bold="True" Font-Size="Larger"  
                ></asp:TextBox>  
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="First Name is empty" ControlToValidate="TextBox3" 
                ForeColor="Red">*</asp:RequiredFieldValidator>    
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="enter correct Email" 
                Font-Bold="True" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
     </tr> 
       
         <tr>
        <td class="style01">
           <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:</b>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="110px" style="font-size:20px">
               <%-- <asp:ListItem>--Select--</asp:ListItem>--%>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </td>
     </tr> 
         <tr>
        <td class="style01">
           <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:</b>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="59px" Width="325px" 
                TextMode="MultiLine" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="First Name is empty" ControlToValidate="TextBox4" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
     </tr> 
         <tr>
        <td class="style01">
         <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone No:</b>  
        </td>
        <td>
        <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="230px" 
                MaxLength="10" Font-Bold="True" Font-Size="Larger" ></asp:TextBox>  
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="First Name is empty" ControlToValidate="TextBox5" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="enter correct phone number" 
                Font-Bold="True" ForeColor="Red" 
                ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
        </td>
     </tr> 
         <tr>
        <td class="style01">
          <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</b> 
        </td>
        <td>
         <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="230px" 
                TextMode="Password" Font-Bold="True" Font-Size="Larger"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="First Name is empty" ControlToValidate="TextBox6" 
                ForeColor="Red">*</asp:RequiredFieldValidator> 
        </td>
     </tr> 
         <tr>
        <td class="style01">
          <b class="colors">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password:</b> 
        </td>
        <td>
          <asp:TextBox ID="TextBox7" runat="server" Height="26px" Width="230px" 
                TextMode="Password" Font-Bold="True" Font-Size="Larger"></asp:TextBox>  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="First Name is empty" ControlToValidate="TextBox7" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                ErrorMessage="enter correct password" ForeColor="#CC0000"></asp:CompareValidator>
        </td>
     </tr> 
         <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                Height="60px" Text="register now" Width="268px" onclick="Button1_Click" />
        </td>
     </tr>   
         <tr>
        <td colspan="2">
            
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:bca %>" 
                SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
         </td>
     </tr>  
  </table>
</div>

</asp:Content>

