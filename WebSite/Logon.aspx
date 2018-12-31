<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="WebSite.Logon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <section id="contact">
        <div class="container">
            <h2 class="text-center text-uppercase text-secondary mb-0">KAYIT</h2>
            <hr class="star-dark mb-5">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">

                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Ad Soyad</label>
                                <asp:TextBox ID="txt_NameSurname" class="form-control" placeholder="Ad Soyad" required="required" ata-validation-required-message="Lütfen, Adınızı giriniz !!!" runat="server"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Kullanıcı Adı</label>
                                <asp:TextBox ID="txt_Username" class="form-control" placeholder="Kullanıcı Adı" required="required" ata-validation-required-message="Lütfen, Kullanıcı adınız giriniz !!!" runat="server"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>E-Posta</label>
                                <asp:TextBox ID="txt_eMail" class="form-control" placeholder="E-Posta" required="required" ata-validation-required-message="Lütfen, E-Posta'nızı giriniz !!!" runat="server"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Şifre</label>
                                <asp:TextBox ID="txt_Password" class="form-control" runat="server" placeholder="Şifre" required="required" data-validation-required-message="Lütfen, Şifrenizi giriniz !!!" TextMode="Password"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Şifre Tekrar</label>
                                <asp:TextBox ID="PasswordAgain" class="form-control" runat="server" placeholder="Şifre Tekrar" required="required" data-validation-required-message="Lütfen, Şifrenizi giriniz !!!" TextMode="Password"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>

                        <br>
                        <div id="Başarılı"></div>
                        <div class="form-group">
                            <asp:Button ID="sendMessageButton" class="btn btn-primary btn-xl" runat="server" Text="Kayıt Ol" OnClick="sendMessageButton_Click" />
                        </div>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </section>
</asp:Content>
