<%@ Page Title="Contact Us Page" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Dose_Of_Cutetape.Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Contact%20Us.css" rel="stylesheet" type="text/css"/>
    <script src="http://maps.googleapis.com/maps/api/js"></script>

    <script>
        var myCenter = new google.maps.LatLng(4.8853633,114.93142122);

        function initialize()
        {
            var mapProp = {
                center: myCenter,
                zoom: 20,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            var marker = new google.maps.Marker({
                position: myCenter,
                animation: google.maps.Animation.BOUNCE
            });
            marker.setMap(map);

            var infowindow = new google.maps.InfoWindow({
                content:"Dose Of Cutetape!"
            });

            infowindow.open(map,marker);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
    <div class="contactform">
 
            <h2>CONTACT FORM</h2>
<pre>We love hearing from you! Make sure you check our <a href="FAQ.aspx">FAQ</a> and <a href="Customer%20Service.aspx">Customer Service</a>.
    Get in touch with us through; Whatsapp +673 8816588 or  social media icons on the top right navigation.</pre>
    </div>
           <h3><asp:Literal ID="litresult" runat="server"></asp:Literal></h3>
        <div class="formblock">
               <h3><asp:Label ID="lblfullname" runat="server" Text="Your Name:"></asp:Label></h3>
               <p><input type="text" placeholder="Your Name" required/></p>
        </div>

        <div class="formblock">
               <h3><asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label></h3>
               <p><input type="email" placeholder="Full Email Address" required/></p>
        </div>

        <div class="formblock">
               <h3><asp:Label ID="lblsubject" runat="server" Text="Subject:"></asp:Label></h3>
               <p><asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqtxtsubject" runat="server" ErrorMessage="Please state your subject!" ControlToValidate="txtsubject" ForeColor="#b200ff"></asp:RequiredFieldValidator></p>
        </div>

        <div class="formblock">
              <h3><asp:Label ID="lblmessage" runat="server" Text="Type Your Message Here..."></asp:Label></h3>
              <p><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqTextBox1" runat="server" ErrorMessage="Please leave a message!" ControlToValidate="TextBox1" ForeColor="#b200ff"></asp:RequiredFieldValidator></p>
            
              <p><asp:Button ID="btnSendEmail" runat="server" Text="Send" OnClick="btnSendEmail_Click" Height="25px"/></p>
              <p><asp:Button ID="btnReset" runat="server" Text="Reset"/>
              
               
       </div>

        <div id="googleMap"></div>
 </form>
</asp:Content>
