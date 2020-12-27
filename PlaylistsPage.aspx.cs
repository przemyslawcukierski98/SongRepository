using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace SongRepository
{
    public partial class PlaylistsPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void songsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SongsPage.aspx");
        }

        protected void artistsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ArtistsPage.aspx");
        }

        protected void albumsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlbumsPage.aspx");
        }

        protected void playlistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaylistsPage.aspx");
        }

        protected void aboutAuthorButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutMePage.aspx");
        }

        protected void SelectNumberOfSongsButton_Click(object sender, EventArgs e)
        {
            if(HowManySongsRadioList.SelectedValue == "3")
            {
                FirstSongsPanel.Visible = true;
                SecondSongsPanel.Visible = false;
                ThirdSongsPanel.Visible = false;
                FourthSongsPanel.Visible = false;
            }
            else if(HowManySongsRadioList.SelectedValue == "5")
            {
                FirstSongsPanel.Visible = true;
                SecondSongsPanel.Visible = true;
                ThirdSongsPanel.Visible = false;
                FourthSongsPanel.Visible = false;
            }
            else if(HowManySongsRadioList.SelectedValue == "7")
            {
                FirstSongsPanel.Visible = true;
                SecondSongsPanel.Visible = true;
                ThirdSongsPanel.Visible = true;
                FourthSongsPanel.Visible = false;
            }
            else if(HowManySongsRadioList.SelectedValue == "10")
            {
                FirstSongsPanel.Visible = true;
                SecondSongsPanel.Visible = true;
                ThirdSongsPanel.Visible = true;
                FourthSongsPanel.Visible = true;
            }
        }

        protected void AddPlaylistButton_Click(object sender, EventArgs e)
        {
            SqlCommand command = null;
            string playlistName = PlaylistNameTb.Text;
            string firstSongTitle = FirstSongDropDown.SelectedValue.ToString();
            string secondSongTitle = SecondSongDropDown0.SelectedValue.ToString();
            string thirdSongTitle = ThirdSongDropDown.SelectedValue.ToString();
            string fourthSongTitle = FourthSongDropDown.SelectedValue.ToString();
            string fifthSongTitle = FifthSongDropDown.SelectedValue.ToString();
            string sixthSongTitle = SixthSongDropDown.SelectedValue.ToString();
            string seventhSongTitle = SeventhSongDropDown.SelectedValue.ToString();
            string eighthSongTitle = EighthSongDropDown.SelectedValue.ToString();
            string ninethSongTitle = NinethSongDropDown.SelectedValue.ToString();
            string tenthSongTitle = TenthSongDropDown.SelectedValue.ToString();

            if(HowManySongsRadioList.SelectedValue == "3")
            {
                command = new SqlCommand("Insert into Playlists values ('"
                + playlistName + "','" + firstSongTitle + "','" +
                secondSongTitle + "','" + thirdSongTitle + "','" +
                "empty" + "','" + "empty" + "','" +
                "empty" + "','" + "empty" + "','" +
                "empty" + "','" + "empty" + "','" +
                "empty" + "')", connection);
            }
            else if(HowManySongsRadioList.SelectedValue == "5")
            {
                command = new SqlCommand("Insert into Playlists values ('"
                + playlistName + "','" + firstSongTitle + "','" +
                secondSongTitle + "','" + thirdSongTitle + "','" +
                fourthSongTitle + "','" + fifthSongTitle + "','" +
                "empty" + "','" + "empty" + "','" +
                "empty" + "','" + "empty" + "','" +
                "empty" + "')", connection);
            }
            else if(HowManySongsRadioList.SelectedValue == "7")
            {
                command = new SqlCommand("Insert into Playlists values ('"
                + playlistName + "','" + firstSongTitle + "','" +
                secondSongTitle + "','" + thirdSongTitle + "','" +
                fourthSongTitle + "','" + fifthSongTitle + "','" +
                sixthSongTitle + "','" + seventhSongTitle + "','" +
                "empty" + "','" + "empty" + "','" +
                "empty" + "')", connection);
            }
            else if(HowManySongsRadioList.SelectedValue == "10")
            {
                command = new SqlCommand("Insert into Playlists values ('"
                + playlistName + "','" + firstSongTitle + "','" +
                secondSongTitle + "','" + thirdSongTitle + "','" +
                fourthSongTitle + "','" + fifthSongTitle + "','" +
                sixthSongTitle + "','" + seventhSongTitle + "','" +
                eighthSongTitle + "','" + ninethSongTitle + "','" +
                tenthSongTitle + "')", connection);
            }

            command.ExecuteNonQuery();
            connection.Close();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}