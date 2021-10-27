<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdatedProduct.aspx.cs" Inherits="WebApplication17.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            background: #00c3ff;
            background: -webkit-linear-gradient(to right, #fff1c, #00c3ff);
            background: #00c3ff;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align:"center" class="auto-style1" style=" height:auto">
        Sort By:&nbsp;
        <asp:DropDownList runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName" Height="44px" Width="152px" ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True">
            <asp:ListItem>---Select Category---</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" SelectCommand="SELECT [CategoryName] FROM [CTable]"></asp:SqlDataSource>
        <hr/>
        <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No Product to display" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Product ID">
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate> 

                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Pname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        &nbsp;<asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Pdesc") %>' TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("Pdesc") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        &nbsp;&nbsp;<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Pimage") %>' Height="100px" Width="92px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        &nbsp;<asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Pprice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <EditItemTemplate>
                        &nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Pquantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("Pquantity") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Pcategory" DataValueField="Pcategory" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" SelectedValue='<%# Eval("Pcategory") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" SelectCommand="SELECT [Pcategory] FROM [Product1]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        &nbsp; &nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("Pcategory") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:CommandField HeaderText="Operation" ShowEditButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
</asp:Content>
