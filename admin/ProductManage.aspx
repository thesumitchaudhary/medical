<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="ProductManage.aspx.cs" Inherits="admin_ProductManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        
                        <asp:BoundField DataField="Pimage" HeaderText="Pimage" 
                            SortExpression="Pimage" />
                        <asp:BoundField DataField="Pprice" HeaderText="Pprice" 
                            SortExpression="Pprice" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bca %>" 
                    DeleteCommand="DELETE FROM [product] WHERE [ProductId] = @ProductId" 
                    InsertCommand="INSERT INTO [product] ([Pname], [Pdesc], [Pimage], [Pprice]) VALUES (@Pname, @Pdesc, @Pimage, @Pprice)" 
                    SelectCommand="SELECT * FROM [product]" 
                    UpdateCommand="UPDATE [product] SET [Pname] = @Pname, [Pdesc] = @Pdesc, [Pimage] = @Pimage, [Pprice] = @Pprice WHERE [ProductId] = @ProductId">
                    <DeleteParameters>
                        <asp:Parameter Name="ProductId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="Pdesc" Type="String" />
                        <asp:Parameter Name="Pimage" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="Pdesc" Type="String" />
                        <asp:Parameter Name="Pimage" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Int32" />
                        <asp:Parameter Name="ProductId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>

