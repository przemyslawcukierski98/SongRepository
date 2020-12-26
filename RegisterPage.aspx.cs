using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongRepository
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            string login = LoginTb.Text;
            string password = PasswordTb.Text;
            var hasNumber = new Regex(@"[0-9]+");
            var hasUpperChar = new Regex(@"[A-Z]+");
            var passwordValidation = hasNumber.IsMatch(password) && hasUpperChar.IsMatch(password);
            var lengthOfLogin = LoginTb.Text.Length;

            if (passwordValidation && lengthOfLogin < 50)
            {
                SqlCommand command = new SqlCommand("Insert into Users values ('"
                + login + "','" + password + "')", connection);

                command.ExecuteNonQuery();
                connection.Close();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            else if(!passwordValidation)
            {
                PasswordValidationLabel.Visible = true;
            }
            else if(lengthOfLogin > 50)
            {
                LoginValidationLabel.Visible = true;
            }
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}