using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_Ki_Dunya.Pages
{
    public partial class BookEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString.HasKeys() == true)
            {
                int id = Int32.Parse(Request.QueryString[0].ToString());
                string query = "select bookID, bookName, bookDescription, authorName, bookImage from books " +
                    "inner join authors " +
                    "on books.authorID = authors.authorID " +
                    "where bookID = " + id;
                databaseConnection connection = new databaseConnection();
                List<Book> book = connection.getData(query);
                bookTitle.Value = book[0].getBookName();
                bookAuthor.Value = book[0].getAuthor();
                bookDescription.Value = book[0].getBookDescription();
                
            }
            else
            {
                Response.Redirect("./AdminPanel.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = Request.Form["BookTitle"];
            string description = Request.Form["bookDescription"];
            string author = Request.Form["bookAuthor"];
            databaseConnection connection = new databaseConnection();
            string query1 = "update authors set authorName = '" + author + "'";
            connection.writeData(query1);
            string query2 = "update books set bookName = '" + title + "', bookDescription = '" + description + "'";
            connection.writeData(query2);
            if(fileUploader.HasFile)
            {
                string query3 = "update books set bookImage = " + "'../PicturesDB/" + fileUploader.FileName.ToString() + "'";
                connection.writeData(query3);
            }
        }
    }
}