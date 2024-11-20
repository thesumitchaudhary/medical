<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
*, *::before, *::after{
    box-sizing: border-box;
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

   <%--    <tr style="width:1110px;height:310px;">
     <td colspan="3">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>
                  <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick" ></asp:Timer>
                  <asp:Image ID="Image2" runat="server" CssClass="auto-style7" Height="402px" Width="1214px" />
              </ContentTemplate>
          </asp:UpdatePanel>
        </td>
     </tr>--%>
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
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
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

