﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dose_Of_Cutetape.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Default.css" rel="stylesheet" type="text/css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="content">

        <p class="Title"><h2>WELCOME TO DOSE OF CUTETAPE</h2></p>
        <p><h4>FEATURES BEST SELECTION OF DIY SUPPLIES FOR WEDDINGS,PARTIES OR ANY EVENTS.</h4></p>
        <pre><h2>About Dose Of Cutetape</h2></pre>
        <pre>Dose Of Cutetape is a DIY independent shop that offers supplies for DIY crafting, decorating,
            parties and other events.Just browse around and have fun!</pre>

    <table border="1">
        <tr>
            <td><a href="Party%20Supplies.aspx">
                <img src="IMAGES/cutetape_celebrate.jpg" /></a></td>
            <td><a href="Packaging.aspx">
                <img src="IMAGES/cutetape_decorate.jpg" /></a></td>     
            <td><a href="Washi%20Tape.aspx">
                <img src="IMAGES/cutetape_recreate.jpg" /></a></td>
        </tr>
    </table>

    </div>

</asp:Content>
