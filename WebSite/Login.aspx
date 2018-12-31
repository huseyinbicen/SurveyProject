<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebSite.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <section id="contact">
        <div class="container">
            <h2 class="text-center text-uppercase text-secondary mb-0">GİRİŞ</h2>
            <hr class="star-dark mb-5">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Kullanıcı Adı</label>
                                <asp:TextBox ID="username" class="form-control" placeholder="Kullanıcı Adı" required="required" ata-validation-required-message="Lütfen, Kullanıcı adınız giriniz !!!" runat="server"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Şifre</label>
                                <asp:TextBox ID="Password" class="form-control" runat="server" placeholder="Şifre" required="required" data-validation-required-message="Lütfen, Şifrenizi giriniz !!!" TextMode="Password"></asp:TextBox>
                                <p class="help-block text-danger"></p>

                            </div>
                            <a href="ForgetPassword.aspx" class="btn btn-link">Şifremi Unuttum?</a>
                        </div>

                        <br>
                        <div id="Başarılı"></div>
                        <asp:Label ID="lbl_Message" CssClass="alert-info" runat="server" Text=""></asp:Label>
                        <div class="form-group">
                            <asp:Button ID="sendMessageButton" class="btn btn-primary btn-xl" runat="server" Text="Giriş" OnClick="sendMessageButton_Click" />
                        </div>
                    </form>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </section>
</asp:Content>
