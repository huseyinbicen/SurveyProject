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
    <br />
    <div style="margin:auto;">
        <asp:GridView ID="GridView1" runat="server" Width="1300px" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="auto-style1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Numara" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Question" HeaderText="Soru" SortExpression="Question" />
                <asp:BoundField DataField="Op1" HeaderText="Seç 1" SortExpression="Op1" />
                <asp:BoundField DataField="Op2" HeaderText="Seç 2" SortExpression="Op2" />
                <asp:BoundField DataField="Op3" HeaderText="Seç 3" SortExpression="Op3" />
                <asp:BoundField DataField="Op4" HeaderText="Seç 4" SortExpression="Op4" />
                <asp:BoundField DataField="Op5" HeaderText="Seç 5" SortExpression="Op5" />
                <asp:BoundField DataField="Op6" HeaderText="Seç 6" SortExpression="Op6" />
                <asp:BoundField DataField="Op7" HeaderText="Seç 7" SortExpression="Op7" />
                <asp:BoundField DataField="Op8" HeaderText="Seç 8" SortExpression="Op8" />
                <asp:BoundField DataField="Op9" HeaderText="Seç 9" SortExpression="Op9" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyContext %>" SelectCommand="SELECT [Id], [Question], [Op1], [Op2], [Op3], [Op4], [Op5], [Op6], [Op7], [Op8], [Op9], [DateOFCreat], [LifeTime], [Type] FROM [Survey] WHERE ([User_Id] = @User_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="User_Id" SessionField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
