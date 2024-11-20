<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="All product.aspx.cs" Inherits="All_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .login-table{   
                 width:100%; 
                 Height:33px;
                 border:0px;
                 border-spacing:0px;
                 background-color:#f9fae8;
               }
    .search-table{
                border-collapse: collapse;  
               }  
 .search-table-tr{
                width:100%;
                border:0px;
                border-spacing:0px;
                }     
  .search-table-td{
                 background-color:#f9fae8;
                 display:flex;      
                 align-item:center;
                 } 
   .search-table-td-textbox{
    
         }    
   .search-table-imagebutton{
    
        }     
  .item-padding{
        padding:0.5rem;
        }
      .datalist-table{
         border-spacing:0px;
        background-color:#e9f7ee;
        }
    .all-product-datalist{
          border-spacing: 10px;
          background-color:#f9fae8;
          margin-top:0px; 
          margin-bottom: 18px; 
     } 
     .linkbutton-control
     {
         color:Black;
         text-decoration:none;
     }
     .linkbutton-control:hover
     {
      color:Blue;   
     }
     
     /* for image slider*/
   
*, *::before, *::after{
    box-sizing: border-box;
            text-align: center;
        }

body{
    margin: 0;
}

.carousal{
    width: 100vw;
    height: 100vh;
    position: relative;
    
}

.carousal > ul{
    margin: 0;
    padding: 0;
    height:100%;
    width:100%;
    list-style: none;
    display: flex;
    overflow: hidden;
}

.slide{
    width: 100%;
    height: 100%;
    flex-shrink: 0;
    transform: translateX(var());
    transition: 300ms transform ease-in-out;
}

.slide > img{
   display: block;
   width: 100%;
   height: 100%;
   object-fit: cover;
   object-position: center;
}

.carousal-botton{
    position: absolute;
    z-index: 2;
    background: none;
    border: none;
    font-size: 4rem;
    top: 50%;
    transform: translateY(-50%);
    color: rgba(255, 255, 255, .5);
    cursor: pointer;
    border-radius: .25rem;
    padding: 0 .5rem;
    background-color: rgba(0, 0, 0, .1);
}

.carousal-botton:hover,
.carousal-botton:focus{
    color: white;
    background-color: rgba(0, 0, 0, .2);
}

.carousal-botton:focus{
    outline: 1px solid black;
}

.carousal-botton.prev{
    left: 1rem;
}

.carousal-botton.next{
    right: 1rem;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <section class="section-first" aria-label="Newest Photos">
        <div class="carousal" data-carousal>
            <botton class="carousal-botton prev" data-carousal-button="prev">&#8656;</botton>
            <botton class="carousal-botton next" data-carousal-button="next">&#8658;</botton>
          <ul data-slides>
             <li class="slide" data-active>
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/1.jpg"></asp:Image>            
             </li>
             <li class="slide">
                <asp:Image ID="Image2"  runat="server" 
                     ImageUrl="~/images/2.jpg"></asp:Image> 
             </li>
             <li class="slide">
             <asp:Image ID="Image3"  runat="server" ImageUrl="~/images/3.jpg"></asp:Image>
             </li>
             <li class="slide">
              <asp:Image ID="Image4"  runat="server" ImageUrl="~/images/4.jpg"></asp:Image>
             </li>
             <li class="slide">
               <asp:Image ID="Image5" runat="server" ImageUrl="~/images/5.jpg"></asp:Image>
             </li>
              <li class="slide">
               <asp:Image ID="Image6"  runat="server" ImageUrl="~/images/6.jpg"></asp:Image>
             </li>
              <li class="slide">
               <asp:Image ID="Image7"  runat="server" ImageUrl="~/images/7.jpg"></asp:Image>
             </li>
          </ul>
       </div>
      </section>
    <table class="login-table">
    <tr style=" background-color:#f9fae8" > 
       <td colspan="2" style=" text-align:right;" >
             <asp:Label ID="Label4" runat="server" style=" text-align:left; " 
                 Font-Bold="True" Font-Italic="True" Font-Names="Bahnschrift SemiBold" 
                 ForeColor="#0066FF"></asp:Label>
             <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" NavigateUrl="~/Login1.aspx">Click To Login</asp:HyperLink>
             <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#FF5050" 
                 Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="Aqua" Height="27px" 
                 Width="105px" onclick="Button1_Click" />
      </td>
    </tr>   
 </table>    
 <table class="search-table" style="width:100%;">  
    <tr class="search-table-tr">
     <td class="search-table-td">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox1" CssClass="search-table-td-textbox" runat="server" Height="41px" Width="376px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;    
      <asp:ImageButton ID="ImageButton2" CssClass="search-table-imagebutton" 
             runat="server" ImageUrl="~/images/search.png" Width="62px" onclick="ImageButton2_Click" 
             />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;
    </td>
   </tr>
</table>
   <asp:DataList ID="DataList1" runat="server" CssClass="all-product-datalist"  DataKeyField="ProductId"
      DataSourceID="SqlDataSource1" Height="293px"  Width="301px" 
        RepeatColumns="4" RepeatDirection="Horizontal"  CellSpacing="10" 
        onitemcommand="DataList1_ItemCommand1"  
        
         >
   <ItemTemplate>
      <table class="datalist-table" > 
         <tr>
            <td class="item-padding" style="align-items:center;">
              <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BackColor="#e9f7ee" BorderWidth="1px" 
              Height="279px" Width="278px" ImageUrl='<%# Eval("Pimage") %>' />
             </td
        </tr>
        <tr>
            <td class="item-padding" style="align-items:center; background-color:#e9f7ee" >
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="true"
                 Font-Names="Nirmala UI Semilight" ForeColor="Black"></asp:Label>
           </td>   
      </tr>   
             <tr>
                 <td class="item-padding" style="align-items:center; background-color:#e9f7ee">
                     <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbutton-control"
                         ToolTip='<%# Eval("ProductId") %>' onclick="LinkButton1_Click1">LinkButton</asp:LinkButton>
                 </td>
             </tr>
       <tr>
           <td class="item-padding" style="align-items:center; background-color:#e9f7ee">
              <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True"
              Font-Names="Arial" ForeColor="Black" Style="text-align:center;"></asp:Label>
              <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True"
              Font-Names="Arial" ForeColor="Black" Style=" text-align:center;"></asp:Label>
           </td>
      </tr>  
      <tr>      
         <td class="item-padding" align:center;>Quantity
            <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            </asp:DropDownList>
          </td>
        </tr>
          <tr>
            <td class="item-padding">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" 
                  ImageUrl="~/images/addtocart.png"  
                    CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart" 
                    onclick="ImageButton1_Click" />
           </td>
          </tr>
       </table>
   </ItemTemplate>
 </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:bca %>" 
    SelectCommand="SELECT [ProductId], [Pname], [Pimage], [Pprice] FROM [product]" >
        </asp:SqlDataSource>
         <script>
             const buttons = document.querySelectorAll("[data-carousal-button]")

buttons.forEach(button => {
    const offset = button.dataset.carousalButton === "next" ? 1 : -1
    button.addEventListener("click", () => changeImage(offset))
})

let timeOut = setTimeout(() => {
    changeImage(1)
}, 3000);

function changeImage(offset) {
    const slides = document.querySelector("[data-carousal]").querySelectorAll(".slide")

    const activeSlide = document.querySelector("[data-carousal]").querySelector("[data-active]")
    let newIndex = [...slides].indexOf(activeSlide) + offset
    if (newIndex < 0) newIndex = slides.length - 1
    if (newIndex >= slides.length) newIndex = 0

    slides[newIndex].dataset.active = true
    slides.forEach(child => {
        child.style.transform = `translateX(${-100 * newIndex}%)`
    })
    delete activeSlide.dataset.active

    clearTimeout(timeOut)
    timeOut = setTimeout(() => {
        changeImage(1)
    }, 3000)
}
      
      </script>
</asp:Content>

