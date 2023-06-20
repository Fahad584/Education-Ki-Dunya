<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Education_Ki_Dunya.Pages.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <link href="../css/AdminPanel.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="../font-awesome-4.7.0/css/font-awesome.min.css"
    />
</head>
<body>
    <form id="form1" runat="server">
        <main>
      <aside id="sidebar">
          <a href="../index.aspx">Back to Home</a>
          
          <div id="text">
            <h1 class="admin-panel-title">Admin Panel</h1>
          </div>

        <div>
          <a href="#" id="bookLink">
            <div id="books">
              <p>Books</p>
            </div>
          </a>
        </div>
      </aside>

      <section>
        <div id="top-bar" style="padding-top: 18px">
          <div id="bars">
            <i class="fa fa-bars fa-2x" aria-hidden="true"></i>
          </div>
        </div>

        <article>
            <div id="addBookDiv">
                <h2>Books Info</h2>
                <asp:Button CssClass="btnAdd" ID="Button1" runat="server" Text="Add Book" OnClick="Button1_Click" />
            </div>

            <div id="allBooks" runat="server">

            </div>
        </article>
      </section>
    </main>
    </form>
    <script src="../JS/Admin%20Panel.js"></script>
</body>
</html>
