<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Submain.Master" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="WebSite.Account.Share" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3 class="BeyazYazi">Anketlerini Paylaş</h3>
    <div style="margin-left: auto; margin-right: auto; width:600px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="638px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="numara" HeaderText="Numara" SortExpression="Numara" />
                <asp:BoundField DataField="soru" HeaderText="Soru" />
                <asp:BoundField DataField="lifetime" HeaderText="Yaşam Süresi" SortExpression="lifetime" />
                <asp:BoundField DataField="weburl" HeaderText="Web URL" SortExpression="weburl" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>

    <br />


</asp:Content>
