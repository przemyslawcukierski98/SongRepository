﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongRepository
{
    public partial class PlaylistsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}