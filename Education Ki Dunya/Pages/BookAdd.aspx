<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookAdd.aspx.cs" Inherits="Education_Ki_Dunya.Pages.BookAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/BookAdd.css" rel="stylesheet" />
    <title>Add Book</title>
</head>
<body>
    <form id="form1" runat="server">
        <main>
        <h1>Add Book Details</h1>
        <section>
            <label for="bookTitle">Enter Book Title</label>
            <input runat="server" type="text" id="bookTitle"/>
            <label for="bookAuthor">Enter Book Author</label>
            <input runat="server" type="text" id="bookAuthor"/>
            <label for="bookDescription">Enter Book Description</label>
            <textarea runat="server" name="bookDescription" id="bookDescription" cols="40" rows="10"></textarea>
            <asp:FileUpload ID="fileUploader" runat="server" accept=".png,.jpg,.jpeg,.gif" />
            <asp:Button ID="Button1" runat="server" Text="Add Book" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </section>
    </main>
    </form>
</body>
</html>
