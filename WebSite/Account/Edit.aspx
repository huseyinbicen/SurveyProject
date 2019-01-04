<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Submain.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebSite.Account.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3 class="BeyazYazi">Anket Düzenleme ve Silme</h3>
    <div style="margin-left: auto; margin-right: auto; width: 900px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="715px" AllowPaging="True" AllowSorting="True" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Numara" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Question" HeaderText="Soru" SortExpression="Question" />
                <asp:BoundField DataField="Op1" HeaderText="Seçenek 1" SortExpression="Op1" />
                <asp:BoundField DataField="Op2" HeaderText="Seçenek 2" SortExpression="Op2" />
                <asp:BoundField DataField="DateOFCreat" HeaderText="Oluşturma Tarihi" SortExpression="DateOFCreat" />
                <asp:BoundField DataField="LifeTime" HeaderText="Yaşam Süresi (Saat)" SortExpression="LifeTime" />
                <asp:BoundField DataField="Type" HeaderText="Alan" SortExpression="Type" />
                <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SurveyContext %>" SelectCommand="SELECT [Question], [Op1], [Op2], [DateOFCreat], [LifeTime], [Type], [Id] FROM [Survey] WHERE ([User_Id] = @User_Id)" DeleteCommand="DELETE FROM [Survey] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Survey] ([Question], [Op1], [Op2], [DateOFCreat], [LifeTime], [Type]) VALUES (@Question, @Op1, @Op2, @DateOFCreat, @LifeTime, @Type)" UpdateCommand="UPDATE [Survey] SET [Question] = @Question, [Op1] = @Op1, [Op2] = @Op2, [DateOFCreat] = @DateOFCreat, [LifeTime] = @LifeTime, [Type] = @Type WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Op1" Type="String" />
            <asp:Parameter Name="Op2" Type="String" />
            <asp:Parameter Name="DateOFCreat" Type="DateTime" />
            <asp:Parameter Name="LifeTime" Type="Int32" />
            <asp:Parameter Name="Type" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="User_Id" SessionField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Op1" Type="String" />
            <asp:Parameter Name="Op2" Type="String" />
            <asp:Parameter Name="DateOFCreat" Type="DateTime" />
            <asp:Parameter Name="LifeTime" Type="Int32" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />


</asp:Content>
