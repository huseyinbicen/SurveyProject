<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebSite.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <!-- About Section -->
    <section class="bg-primary text-white mb-0" id="about">
        <div class="container">
            <h2 class="text-center text-uppercase text-white">HAKKINDA</h2>
            <hr class="star-light mb-5">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-6">
                    <img style="border-radius: 20px;" src="image/res1.png" />
                </div>
                <div class="col-lg-1"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-6">
                    <img style="border-radius: 20px;" src="image/res2.png" />
                </div>
                <div class="col-lg-1"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-6">
                    <img style="border-radius: 20px;" src="image/res3.png" />
                </div>
                <div class="col-lg-1"></div>
            </div>
            <br />
            <div class="text-center mt-4">
                <a class="btn btn-xl btn-outline-light" href="Logon.aspx">
                    <i class="fas fa-poll-h  mr-2"></i>
                    Şimdi Başla
                </a>
            </div>
        </div>
    </section>
</asp:Content>
