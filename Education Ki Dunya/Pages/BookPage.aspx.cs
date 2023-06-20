using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Education_Ki_Dunya.Pages
{
    public partial class BookPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString.HasKeys() == true)
            {
                int id = Int32.Parse(Request.QueryString[0].ToString());
                databaseConnection connection = new databaseConnection();
                string query = "select * from books where bookID=" + id;
                List<Book> list = connection.getData(query);
                mainDiv.InnerHtml = @"<br/><h1>" + list[0].getBookName() + "</h1> <br/>" +
                    "<div class=\"bookDescription\"><p>" + list[0].getBookDescription() + "</p><br><img src=\"." + list[0].getBookPath() + "\"/></div>";
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            
        }
    }
}