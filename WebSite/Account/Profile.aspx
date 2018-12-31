<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Submain.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebSite.Account.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h1 class="BeyazYazi">Kullanıcı Ayarları</h1>
    <asp:TextBox ID="txt_Username" runat="server" CssClass="txtBox" placeholder="Username" Enabled="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="txt_NameSurname" runat="server" CssClass="txtBox" placeholder="Name and Surname"></asp:TextBox>
    <br />
    <asp:TextBox ID="txt_Mail" runat="server" CssClass="txtBox" placeholder="E-Mail"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Gender:  " CssClass="BeyazYazi"></asp:Label>
    <asp:RadioButton ID="rb_Male" runat="server" GroupName="Gender" Text="Male" CssClass="BeyazYazi" Checked="True" />
    <asp:RadioButton ID="rb_Female" runat="server" GroupName="Gender" Text="Female" CssClass="BeyazYazi" />
    <br />
    <br />
    <asp:TextBox ID="txt_oldPassword" runat="server" CssClass="txtBox" placeholder="Confirm old password" TextMode="Password"></asp:TextBox>
    <br />
    <asp:TextBox ID="txt_NewPassword" runat="server" CssClass="txtBox" placeholder="New password (if you want)" TextMode="Password"></asp:TextBox>
    <br />
    <asp:TextBox ID="txt_ConfirmNewPassword" runat="server" CssClass="txtBox" placeholder="Confirm new password" TextMode="Password"></asp:TextBox>
    <br />
    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="" CssClass="BeyazYazi"></asp:CustomValidator>
    <br />
    <br />
    <asp:Button ID="btn_Update" runat="server" CssClass="btn" Text="Update Information" OnClick="btn_Update_Click" />
    <br />
</asp:Content>
