<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
 .auto-style1{
   position:absolute;
   top:80px;
   left:100px;
   width:10%;
   height:115px;
   margin-left:170px;
   margin-top:145px;
   margin-bottom:5px;
   margin-right:120px; 
   border-top-right-radius:20px;
   border-bottom-left-radius:20px;
   border-top-left-radius:20px;
   border-bottom-right-radius:20px;
 }
 .auto-style2{
     width:84px;
     font-size:25px;
     color:White;
     height:92px;
 }
 .auto-style3{
     width:84px;
     height:55px;      
     font-size:25px;
     color:White;
 }
 .auto-style4{
      height:50px;
      width:101px;
 }
 .auto-style5 {
  margin-left:0px;   
     
 }
 .auto-style6{
     height:58px;
 }     
.auto-style7{
      width:101px;
     height:92px;
 }
 .auto-style08{    
      height:68px;
 }
 .auto-style9{
      height:723px;
     /* background-color:gray;*/
 }
  .auto-style10{
     height:787px;
     margin-left:0px;
 }
  .auto-style11{
      height:158px;
       width:580px;
 }
  .auto-style012
  {
        height:56px;
       width:733px
    }
  .auto-style014{
      /*background-color:red; */
      color:White;
      font-size:54px;
  }
    .style01
    {
        height: 48px;
        width: 256px;
        /*background-image: url('images/header.jpg'); */
    }
    .style2
    {
        height: 162px;
        width: 580px;
    }
    .style03
    {
        width: 275px;
        height: 80px;
        font-size: 25px;
        color: White;
       /* background-image: url('images/header1.jpg');*/
    }
    .style4
    {
        width: 275px;
        font-size: 25px;
        color: White;
        height: 92px;
       /* background-image: url('images/header.jpg');*/
    }
    .style5
    {
        height: 50px;
        width: 322px;
        /*background-image: url('images/header.jpg');*/
    }
    .style6
    {
        width: 322px;
        height: 92px;
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="auto-style10" style="background-image: url('images/log2.jpg')">
  
  <table border="1" class="auto-style1"  >
    <tr>
      <td class="style2" colspan="2">
          <asp:Image ID="Image1" runat="server" Height="300px" 
              ImageUrl="~/images/login.jpg" Width="734px" style="margin-top: 0px" />
      </td>
    </tr>
    <tr>
      <td class="style01" colspan="2">
        <h1 class="auto-style012">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong> <span class="auto-style014">login page</span></strong></h1>
      </td>
    </tr>
    <tr>
      <td class="style03">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email_id:-</td>
      <td class="style5" >
          <asp:TextBox ID="TextBox1" runat="server" Height="30px"  Width="252px" 
              Font-Bold="True" Font-Size="Larger" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" 
              ErrorMessage="enter email id" ForeColor="#cc0000" runat="server" 
              ControlToValidate="TextBox1" >*</asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          Password:-</td>
      <td class="style6">
          <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Password" 
              Width="253px" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="enter passowrd" ForeColor="#cc0000">*</asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr>
      <td colspan="2" class="auto-style08">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
              ID="Button1" runat="server" BackColor="#666699" BorderColor="#990033" 
              CssClass="auto-style5" Height="35px" Text="login" Width="105px" 
              Font-Bold="true" ForeColor="White" onclick="Button1_Click1"   />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
      
      </tr>
     
  </table>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:bca %>" 
          SelectCommand="SELECT [Email], [Password] FROM [register]"></asp:SqlDataSource>
  </div>
</asp:Content>

