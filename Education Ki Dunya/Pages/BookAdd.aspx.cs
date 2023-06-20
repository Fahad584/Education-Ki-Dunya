using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_Ki_Dunya.Pages
{
    public partial class BookAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string bookName = bookTitle.Value.Trim();
            string Authur = bookAuthor.Value.Trim();
            string description = bookDescription.Value.Trim();
            string bookImage;
            databaseConnection connection = new databaseConnection();
            
            
            if(fileUploader.HasFile)
            {
                bookImage = fileUploader.FileName.ToString();
                //string path = Server.MapPath("~/PicturesDB/") + bookImage;
                fileUploader.PostedFile.SaveAs(Server.MapPath("~/PicturesDB/") + bookImage);
                string path = "./PicturesDB/" + bookImage;
                
                string query1 = $"insert into authors values('{Authur}')";
                connection.writeData(query1);
                int authorID = connection.getAuthorID($"select authorID from authors where authorName = '{Authur}'");
                string query2 = $"insert into books values('{bookName}' ,'{description}', {authorID}, '{path}')";
                connection.writeData(query2);
                bookTitle.Value = "";
                bookDescription.Value = "";
                bookAuthor.Value = "";
                Label1.Text = "Book Added Sucessfully";
            }
            else
            {
                Label1.Text = "Please Fill All Data";
            }
        }
    }
}
