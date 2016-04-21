<%@ Page Title="Dose Of Cutetape Account Page" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Dose_Of_Cutetape.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Account.css" rel="stylesheet" type="text/css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="loginform">
        <p><h3>Got an account? Login using the login form below!</h3></p>
       <h2>LOGIN FORM</h2>

        <ul>
            <li><asp:Label ID="lbluseremail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtuseremail" runat="server"></asp:TextBox></li>
        
            <li><asp:Label ID="lbluserpassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtuserpassword" runat="server"></asp:TextBox></li>
          
            <li>
                <asp:Button ID="btnSendEmail" runat="server" Text="Login" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel"  />
                <asp:Literal ID="litloginresult" runat="server"></asp:Literal>
            </li>
        </ul>
   </div> 
      
   <div class="signupform">
       <p><h3>Not registered? create an account by signing up!</h3></p>
                <h2>SIGN UP</h2>
            
       <ul>
           <li><asp:Label ID="lblfullname" runat="server" Text="Your Fullname:"></asp:Label>
           <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox></li>

           <li><asp:Label ID="lblemail" runat="server" Text="Your Email:"></asp:Label>
           <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></li>

           <li><asp:Label ID="lblpassword" runat="server" Text="Your Password:"></asp:Label>
           <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></li>

           <li><asp:Label ID="lblconfirmpassword" runat="server" Text="Confirm Password:"></asp:Label>
           <asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox></li>

           <li>
           <asp:Button ID="btnSignup" runat="server" Text="Sign Up" />
           <asp:Button ID="btnSignupReset" runat="server" Text="Reset" />
           <asp:Literal ID="litsignupresult" runat="server"></asp:Literal></li>

       </ul>
       
    </div>

</asp:Content>
