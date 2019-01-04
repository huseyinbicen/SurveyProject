# SurveyProject
It's Survey website for learning asp.net

Hüseyin BİÇEN
Web Tabanlı Programlama Proje Ödevi Siirt Üniversitesi

+	Kullanılan Teknolojiler
    * Asp.net
    *	Jquery
    *	Javascript
    *	Css (& Font too)
    *	MS SQL 
    *	Entity framework (Database Connection)
    *	Bootstrap

+	Veri Tabanı Tabloları
  + User (Kullanıcının giriş bilgileri yer alıyor.)
  +	Survey (Kullanıcının hazırladığı anketler yer alıyor. Burada kullanıcılı ilişkili tablodur.)
    *	İlişkiler = User_Id
  +	Answer (Kullanıcının oluşturduğu anketi cevaplayan kişilerin bilgileri yer alıyor.)
    *	İlişkiler = User_Id  &  Survey_Id

+	Anket Sitesinin Sayfaları
    *	Main MasterPage (Static Panel)
    *	About.aspx
    *	Contact.aspx
    *	Default.aspx
    *	ForgetPassword.aspx
    *	Login.aspx
    *	Logon.aspx
+	Submain MasterPage (Dynamic/User Panel)
    *	Create.aspx
    *	Edit.aspx
    *	Home.aspx
    *	Profile.aspx
    *	Result.aspx
    *	Share.aspx
+	AnswerSurvey.aspx



*** Web Site Ekran Görüntüleri Screnshot dizininde paylaşılmıştır. 
*** DB2deki tablolar Database Tabloları altında paylaşılmıştır.
*** Uygulamayı çalıştırmadan önce Database oluşturulmalı, Solition explorer içindeki database klasörünün içeriği temizlenmeli ve Config dosyasındaki configration'da eklenen add tag'ını silmeli ve Bundan sonra Database klasörüne Sağ tıklayıp;

Add > ADO.net Entit Data Model > Model name (SurveyContext) > Code first from database > .... database'da oluşturulan tabloları(User,Survey,Anser) ekleyiniz.

Teşekkürler...

Hüseyin BİÇEN - Siirt Üniversitesi Bilgisayar Mühendisliği 4 .Sınıf



