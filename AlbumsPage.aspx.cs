using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongRepository
{
    public partial class AlbumsPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void albumsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlbumsPage.aspx");
        }

        protected void aboutAuthorButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutMePage.aspx");
        }

        protected void artistsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ArtistsPage.aspx");
        }

        protected void songsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SongsPage.aspx");
        }

        protected void AddArtistButtonFromPanel_Click(object sender, EventArgs e)
        {
            string title = TitleTb.Text;
            string genres = GenresTb.Text;
            string minutes = MinTb.Text;
            string seconds = SecTb.Text;
            string length = minutes + ":" + seconds;
            string date = DateCalendar.SelectedDate.ToShortDateString();
            string artist = ArtistDropdown.SelectedValue.ToString();

            var titleValidation = TitleTb.Text.Length < 100 && (TitleTb.Text != "");
            var genresValidation = GenresTb.Text.Length < 50 && (GenresTb.Text != "");
            var lengthValidation = length.Length < 15 && (MinTb.Text != "") && (SecTb.Text != "");

            if(titleValidation && genresValidation && lengthValidation)
            {
                SqlCommand command = new SqlCommand("Insert into Albums values ('"
                + title + "','" + genres + "','" + length + "','" + date + "','" + artist
                + "')", connection);

                TitleValidationLabel.Visible = false;
                GenresValidationLabel.Visible = false;
                LengthValidationLabel.Visible = false;

                command.ExecuteNonQuery();
                connection.Close();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            if(!titleValidation && genresValidation && lengthValidation)
            {
                TitleValidationLabel.Visible = true;
                GenresValidationLabel.Visible = false;
                LengthValidationLabel.Visible = false;
            }
            if(titleValidation && !genresValidation && lengthValidation)
            {
                TitleValidationLabel.Visible = false;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = false;
            }
            if(titleValidation && genresValidation && !lengthValidation)
            {
                TitleValidationLabel.Visible = false;
                GenresValidationLabel.Visible = false;
                LengthValidationLabel.Visible = true;
            }
            if(!titleValidation && !genresValidation && lengthValidation)
            {
                TitleValidationLabel.Visible = true;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = false;
            }
            if(titleValidation && !genresValidation && !lengthValidation)
            {
                TitleValidationLabel.Visible = false;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = true;
            }
            if(!titleValidation && !genresValidation && !lengthValidation)
            {
                TitleValidationLabel.Visible = true;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = true;
            }
        }

        protected void AddAlbumButton_Click(object sender, EventArgs e)
        {
            if(AddAlbumPanel.Visible == true)
            {
                AddAlbumPanel.Visible = false;
            }
            else if(AddAlbumPanel.Visible == false)
            {
                AddAlbumPanel.Visible = true;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void playlistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaylistsPage.aspx");
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}