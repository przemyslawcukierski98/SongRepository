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

            SqlCommand command = new SqlCommand("Insert into Songs values ('"
            + name + "','" + length + "','" + genres + "','" + tempo + "','"
            + album + "','" + artist + "')", connection);

            command.ExecuteNonQuery();
            connection.Close();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}