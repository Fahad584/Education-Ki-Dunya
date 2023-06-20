<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Education_Ki_Dunya.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
      <div class="space"></div>

      <section>
        <div id="loginMain">
        <div id="loginDiv">
            <h1>Login to your account</h1>
            <div id="loginComponent">
                <label for="inputUsername">
                    Enter Username
                </label>
                <input type="text" id="inputUsername" runat="server">
                <label for="inputPassword">Enter Password</label>
                <input type="password"
                id="inputPassword" runat="server">
                <asp:Button CssClass="btnSubmit" ID="button" runat="server" Text="Submit" OnClick="button_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
    </div>
      </section>

      <div class="space"></div>
    </main>
</asp:Content>
