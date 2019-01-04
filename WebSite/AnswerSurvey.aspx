<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnswerSurvey.aspx.cs" Inherits="WebSite.AnswerSurvey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
    </script>

    <link href="//fonts.googleapis.com/css?family=Barlow:300,400,500" rel="stylesheet">

    <link href="Style/styleAnket.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="header-w3ls">Anketistan Anket Formu
        </h1>
        <!-- multistep form -->
        <div class="main-bothside">

            <div class="form-group">
                <div class="form-mid-w3ls">
                    <p>İsim</p>
                    <asp:TextBox ID="txt_Name" runat="server" class="form-control" placeholder=""></asp:TextBox>
                </div>
                <div class="form-mid-w3ls">
                    <p>E-Posta</p>
                    <asp:TextBox ID="txt_Mail" runat="server" class="form-control" placeholder=""></asp:TextBox>
                </div>
            </div>
            <div class="personal-info">
                <strong style="font-weight: bold; font-size: larger;">Soru :</strong>
                <asp:Label ID="lbl_Question" runat="server" Text="SDfısdfsubdıfsdfbsdf" style="text-transform: uppercase; font-weight: bold; font-size:large;"></asp:Label>
                <br />
                <div class="form-check" style="font-size:larger;">
                    <br />
                    <asp:RadioButton ID="rb_1" runat="server" Text="Seç 1" GroupName="Survey" /><br /><br />
                    <asp:RadioButton ID="rb_2" runat="server" Text="Seç 2" GroupName="Survey" /><br />
                </div>
            </div>
            <br />
            <asp:Button ID="btn_Cevap" runat="server" Text="ANKETİ TAMAMLA" OnClick="btn_Cevap_Click" />
        </div>
        <div class="copy">
            <p>©2019 Anketistan. Created By <a href="http://www.huseyinbicen.com" target="_blank">Hüseyin BİÇEN</a></p>
        </div>
    </form>
</body>
</html>
