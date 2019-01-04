<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Submain.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebSite.Account.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3 class="BeyazYazi">Anasayfa</h3>
    <br />
    <div style="margin:auto;">
        <asp:GridView ID="GridView1" runat="server" Width="1300px" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style1">
            <Columns>
                <asp:BoundField DataField="Question" HeaderText="Soru" SortExpression="Question" />
                <asp:BoundField DataField="Op1" HeaderText="Seçenek 1" SortExpression="Op1" />
                <asp:BoundField DataField="Op2" HeaderText="Seçenek 2" SortExpression="Op2" />
                <asp:BoundField DataField="DateOFCreat" HeaderText="Oluşturma Tarihi" SortExpression="DateOFCreat" />
                <asp:BoundField DataField="LifeTime" HeaderText="Yaşam Süresi" SortExpression="LifeTime" />
                <asp:BoundField DataField="Type" HeaderText="Alan" SortExpression="Type" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" CssClass="horizontal-align:Center" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyContext %>" SelectCommand="SELECT [Question], [Op1], [Op2], [DateOFCreat], [LifeTime], [Type] FROM [Survey] WHERE ([User_Id] = @User_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="User_Id" SessionField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
