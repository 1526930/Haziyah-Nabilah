<%@ Page Title="Dose of Cutetape Contact Us Page" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="Dose_Of_Cutetape.Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Contact%20Us.css" rel="stylesheet" type="text/css"/>

    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contactform">
 
            <h2>CONTACT FORM</h2>
<pre>We love hearing from you! Make sure you check our <a href="FAQ.aspx">FAQ</a> Get in touch with us through; 
    Whatsapp +673 8816588 or follow us by clicking the social media icons on the top right navigation.</pre>
    </div>

            <div class="formblock">

                <label for="FullName"><h3>Full Name:</h3>
                <input placeholder="Your FullName" type="text" tabindex="1" required autofocus></label>
                    

            </div>
       
            <div class="formblock">

                <label for="Email"><h3>Email Address:</h3>
                <input placeholder="Your Email Address" type="email" tabindex="2" required></label>

            </div>

            <div class="formblock">

                <label for="Subject"><h3>Subject:</h3>
                <input placeholder="Subject" type="text" tabindex="3" required></label>

            </div>

            <div class="formblock">
                <label ID="Message"><h3>Type Your Message Here...</h3>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></label>
               
               <p><asp:Button ID="btnSendEmail" runat="server" Text="Send" OnClick="btnSendEmail_Click"/>
                  <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                  <asp:Literal ID="litresult" runat="server"></asp:Literal></p>
            </div>
    
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1987.6603015690102!2d114.92767683353436!3d4.885876409493303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcacd96016959ec39!2sLaksamana+College+of+Business!5e0!3m2!1sen!2s!4v1460526694480" allowfullscreen></iframe>

</asp:Content>
