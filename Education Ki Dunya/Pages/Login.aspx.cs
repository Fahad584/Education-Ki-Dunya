using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Education_Ki_Dunya.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void button_Click(object sender, EventArgs e)
        {
            string username;
            string password;

            username = inputUsername.Value;
            password = inputPassword.Value;

            if (username == "faisal" && password == "123")
            {
                Session["username"] = username;
                Session["password"] = password;
                Response.Redirect("./AdminPanel.aspx");
            }
            else
            {
                Label1.Text = "Invalid username or password";
            }
        }
    }
}