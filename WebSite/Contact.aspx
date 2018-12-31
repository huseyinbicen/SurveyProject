<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebSite.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <section id="contact">
        <div class="container">
            <h2 class="text-center text-uppercase text-secondary mb-0">İLETİŞİM</h2>
            <hr class="star-dark mb-5">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>İsim</label>
                                <input class="form-control" id="name" type="text" placeholder="İsim" required="required" data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>E-Posta</label>
                                <input class="form-control" id="email" type="email" placeholder="E-Posta" required="required" data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Telefon Numarası</label>
                                <input class="form-control" id="phone" type="tel" placeholder="Telefon Numarası" required="required" data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Mesaj</label>
                                <textarea class="form-control" id="message" rows="5" placeholder="Mesaj" required="required" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="Başarılı"></div>
                        <div class="form-group">
                            <asp:Button ID="sendMessageButton" class="btn btn-primary btn-xl" runat="server" Text="Gönder" />
                        </div>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </section>
</asp:Content>
