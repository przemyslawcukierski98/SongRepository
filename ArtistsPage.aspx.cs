using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongRepository
{
    public partial class ArtistsPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void aboutAuthorButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutMePage.aspx");
        }

        protected void albumsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlbumsPage.aspx");
        }

        protected void artistsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ArtistsPage.aspx");
        }

        protected void songsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SongsPage.aspx");
        }

        protected void AddArtistButton_Click(object sender, EventArgs e)
        {
            if(ArtistAddPanel.Visible == true)
            {
                ArtistAddPanel.Visible = false;
            }
            else if(ArtistAddPanel.Visible == false)
            {
                ArtistAddPanel.Visible = true;
            }
        }

        protected void AddArtistButtonFromPanel_Click(object sender, EventArgs e)
        {
            string nick = NickTb.Text;
            string genres = GenresTb.Text;
            string country = CountryTb.Text;
            string date = DataCalendar.SelectedDate.ToShortDateString();

            SqlCommand command = new SqlCommand("Insert into Artists values ('"
            + nick + "','" + date + "','" + genres + "','" + country + "')", connection);

            command.ExecuteNonQuery();
            connection.Close();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void playlistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaylistsPage.aspx");
        }
    }
}