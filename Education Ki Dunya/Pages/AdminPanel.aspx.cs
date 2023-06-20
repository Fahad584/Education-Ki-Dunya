using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_Ki_Dunya.Pages
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.HasKeys() == true)
            {
                int id = Int32.Parse(Request.QueryString[0].ToString());
                databaseConnection connection = new databaseConnection();
                string query1 = "select authorID from books where bookID = " + id;
                int authorID = connection.getAuthorID(query1);
                string query2 = "delete from books where bookID = " + id;
                connection.writeData(query2);
                string query3 = "delete from authors where authorID = " + authorID;
                connection.writeData(query3);
                structure();
            }
            else
            {
                structure();
            }

        }
        public void structure()
        {
            databaseConnection connection = new databaseConnection();
            string query = "select * from books";
            List<Book> list = new List<Book>();
            list = connection.getData(query);
            string html = "<ul>";

            for (int i = 0; i < list.Count; i++)
            {
                html = html + "<li><div class='items'><div class='bookname'>" + list[i].getBookName() + "</div><div class='itemImage'>" + "<img src='." + list[i].getBookPath() + "'/>" +
                    "</div> <div class='buttons'><a href='./BookEdit.aspx?id=" + list[i].getBookId() + "'>Edit</a><h1 style='font-size: 30px'>|</h1><a href='./AdminPanel.aspx?id=" + list[i].getBookId().ToString() + "'>Delete</a></div>" + "</div></li>";
            }

            allBooks.InnerHtml = html;
        }

        protected void ClickBtn(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
            allBooks.InnerHtml = "you clicked me";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("./BookAdd.aspx");
        }
    }
}