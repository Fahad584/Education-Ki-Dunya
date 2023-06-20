<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Education_Ki_Dunya.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="../css/Contact.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
      <div class="space"></div>

      <section>
        <h1>Contact Education Ki Dunya</h1>
        <hr>
        <div>
            <div id="form">
            <label for="name">Your Name</label>
            <input type="text" id="name" name="name">
            <label for="email">Your Email</label>
            <input type="email" id="email" name="email">
            <label for="subject">Subject</label>
            <input type="text" id="subject" name="subject">
            <label for="message">Your Message</label>
            <textarea name="message" id="message" cols="30" rows="10"></textarea>
            <button type="button">Submit</button>
                </div>
            <img id="formImage" src="../pictures/banner.jpg" alt="">
            
            
          
        </div>
         
      </section>

      <div class="space"></div>
    </main>
    <script src="../app.js"></script>
</asp:Content>
