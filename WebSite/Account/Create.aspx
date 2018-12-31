<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Submain.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebSite.Account.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        var $button = document.querySelector('.button');
        $button.addEventListener('click', function () {
            var duration = 0.3,
                delay = 0.08;
            TweenMax.to($button, duration, { scaleY: 1.6, ease: Expo.easeOut });
            TweenMax.to($button, duration, { scaleX: 1.2, scaleY: 1, ease: Back.easeOut, easeParams: [3], delay: delay });
            TweenMax.to($button, duration * 1.25, { scaleX: 1, scaleY: 1, ease: Back.easeOut, easeParams: [6], delay: delay * 3 });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3 class="BeyazYazi">Hızlı Anket Oluştur</h3>
    <br />
    <asp:TextBox ID="txt_Question" runat="server" CssClass="txtBox" placeholder="Anket başlığı / Sorusu giriniz" Height="70px" TextMode="MultiLine" Width="300px"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Height="45px" Text="Seçenek 1 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op1" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Height="45px" Text="Seçenek 2 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op2" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Height="45px" Text="Seçenek 3 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op3" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Height="45px" Text="Seçenek 4 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op4" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Height="45px" Text="Seçenek 5 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op5" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Height="45px" Text="Seçenek 6 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op6" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Height="45px" Text="Seçenek 7 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op7" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Height="45px" Text="Seçenek 8 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op8" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label9" runat="server" Height="45px" Text="Seçenek 9 :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:TextBox ID="txt_Op9" runat="server" CssClass="txtBox" Height="7px" Width="200px"></asp:TextBox>
    <br />
    <asp:Label ID="Label10" runat="server" Height="45px" Text="Süre :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:DropDownList ID="DDL_Sure" runat="server" Height="60px" Width="250px" CssClass="btn">
        <asp:ListItem Value="12">12 Saat</asp:ListItem>
        <asp:ListItem Value="24">1 Gün</asp:ListItem>
        <asp:ListItem Value="72">3 Gün</asp:ListItem>
        <asp:ListItem Value="168">7 Gün</asp:ListItem>
        <asp:ListItem Value="336">14 Gün</asp:ListItem>
        <asp:ListItem Value="720">1 Ay</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />

    <asp:Label ID="Label11" runat="server" Height="45px" Text="Alan :" Width="100px" CssClass="BeyazYazi"></asp:Label>&nbsp
    <asp:DropDownList ID="DDL_Type" runat="server" Height="60px" Width="250px" CssClass="btn">
        <asp:ListItem>Teknoloji</asp:ListItem>
        <asp:ListItem>Gündem</asp:ListItem>
        <asp:ListItem>Siyaset</asp:ListItem>
        <asp:ListItem>Sağlık</asp:ListItem>
        <asp:ListItem>Eğitim</asp:ListItem>
        <asp:ListItem>Spor</asp:ListItem>
        <asp:ListItem>Seyehat</asp:ListItem>
        <asp:ListItem>Sinema</asp:ListItem>
        <asp:ListItem>Yaşam</asp:ListItem>
        <asp:ListItem>Dizi</asp:ListItem>
        <asp:ListItem>Oyun</asp:ListItem>
        <asp:ListItem>Kültür/Sanat</asp:ListItem>
        <asp:ListItem>Astroloji</asp:ListItem>
        <asp:ListItem>TV</asp:ListItem>
        <asp:ListItem>Moda</asp:ListItem>
        <asp:ListItem>Telefon</asp:ListItem>
        <asp:ListItem>Otomabil</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:Button ID="btn_AnketOlustur" runat="server" Text="Anketi Oluştur" CssClass="btn" OnClick="btn_AnketOlustur_Click" />

</asp:Content>
