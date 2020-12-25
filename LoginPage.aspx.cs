using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongRepository
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            string login = LoginTb.Text;
            string password = PasswordTb.Text;

            SqlCommand command = new SqlCommand("Select * from Users where Login='"
                + LoginTb.Text.Trim() + "' AND Password='" + PasswordTb.Text.Trim() + "'",
                connection);
            SqlDataReader dataReader = command.ExecuteReader();

            if (dataReader.HasRows)
            {
                Response.Redirect("AboutMePage.aspx");
            }
            else
            {
                InvalidLoginOrPasswordLabel.Visible = true;
            }
        }
    }
}