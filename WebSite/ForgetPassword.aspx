<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="WebSite.ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">

            <div class="col-lg-6 mx-auto">
                <form name="sentMessage" id="contactForm" novalidate="novalidate">
                    <div class="text-center">
                        <h3><i class="fa fa-lock fa-4x"></i></h3>
                        <h2 class="text-center">Şifremi Unuttum?</h2>
                        <p>Şifreni buradan sıfırlaya bilirsin</p>
                        <div class="panel-body">
                        </div>
                    </div>

                    <div class="control-group">
                        <div class="form-group floating-label-form-group controls mb-0 pb-2">
                            <label>E-Posta</label>
                            <asp:TextBox ID="txt_Mail" class="form-control" runat="server" placeholder="E-Posta" required="required" data-validation-required-message="Lütfen, E-Posta giriniz !!!"></asp:TextBox>
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>

                    <br>
                    <div id="Başarılı"></div>
                    <div class="form-group">
                        <asp:Button ID="sendMessageButton" class="btn btn-primary btn-xl" runat="server" Text="Şifreyi Sıfırla" OnClick="sendMessageButton_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
