using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_Ki_Dunya
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            databaseConnection connection = new databaseConnection();
            string query = "select * from books";
            List<Book> list = connection.getData(query);
            string data = "";
            for (int i = 0; i < list.Count; i++)
            {
                data = data + "<div><a href=" + "\"./Pages/BookPage.aspx?id=" + list[i].getBookId() + "\"" + "><img src=" + "\"" + list[i].getBookPath() + "\"" + @"/>
                     <p>" + list[i].getBookName() + @"</p>
                      </a></div> ";
            }

            bookDiv.InnerHtml = data; 

        }
    }
}