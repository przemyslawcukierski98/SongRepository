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
    public partial class SongsPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void artistsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ArtistsPage.aspx");
        }

        protected void albumsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlbumsPage.aspx");
        }

        protected void aboutAuthorButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutMePage.aspx");
        }

        protected void AddAlbumButton_Click(object sender, EventArgs e)
        {
            if(AddSongPanel.Visible == true)
            {
                AddSongPanel.Visible = false;
            }
            else if(AddSongPanel.Visible == false)
            {
                AddSongPanel.Visible = true;
            }
        }

        protected void AddSongButtonPanel_Click(object sender, EventArgs e)
        {
            string name = NameTb.Text;
            string min = MinTb.Text;
            string sec = SecTb.Text;
            string genres = GenresTb.Text;
            string tempo = TempoDropdown.SelectedValue.ToString();
            string album = AlbumDropdown.SelectedValue.ToString();
            string artist = ArtistDropdown.SelectedValue.ToString();
            string length = min + ":" + sec;

            var nickValidation = NameTb.Text.Length < 100 && (NameTb.Text != "");
            var genresValidation = GenresTb.Text.Length < 100 && (GenresTb.Text != "");
            var lengthValidation = length.Length < 15 && (MinTb.Text != "") && (SecTb.Text != "");

            if(nickValidation && genresValidation && lengthValidation)
            {
                SqlCommand command = new SqlCommand("Insert into Songs values ('"
                + name + "','" + length + "','" + genres + "','" + tempo + "','"
                + album + "','" + artist + "')", connection);

                command.ExecuteNonQuery();
                connection.Close();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            if (!nickValidation && genresValidation && lengthValidation)
            {
                NickValidationLabel.Visible = true;
                GenresValidationLabel.Visible = false;
                LengthValidationLabel.Visible = false;
            }
            if (nickValidation && !genresValidation && lengthValidation)
            {
                NickValidationLabel.Visible = false;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = false;
            }
            if (nickValidation && genresValidation && !lengthValidation)
            {
                NickValidationLabel.Visible = false;
                GenresValidationLabel.Visible = false;
                LengthValidationLabel.Visible = true;
            }
            if (nickValidation && !genresValidation && lengthValidation)
            {
                NickValidationLabel.Visible = true;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = false;
            }
            if (nickValidation && !genresValidation && !lengthValidation)
            {
                NickValidationLabel.Visible = false;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = true;
            }
            if (!nickValidation && !genresValidation && !lengthValidation)
            {
                NickValidationLabel.Visible = true;
                GenresValidationLabel.Visible = true;
                LengthValidationLabel.Visible = true;
            }

        }

        protected void playlistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaylistsPage.aspx");
        }
    }
}