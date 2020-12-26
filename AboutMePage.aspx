<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutMePage.aspx.cs" Inherits="SongRepository.AboutMePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title></title>
	<style type="text/css">
		#songsButton, #artistsButton, #albumsButton, #aboutAuthorButton, #playlistButton {
			box-shadow:inset 0px 1px 0px 0px #f5978e;
			background:linear-gradient(to bottom, #f24537 5%, #c62d1f 100%);
			background-color:#f24537;
			border-radius:9px;
			border:2px solid #d02718;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:18px;
			font-weight:bold;
			padding:6px 24px;
			text-decoration:none;
			text-shadow:0px 1px 0px #810e05;
		}
		#songsButton:hover, #artistsButton:hover, #albumsButton:hover, #aboutAuthorButton:hover, #playlistButton:hover {
			background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
			background-color:#c62d1f;
		}
		#songsButton:active, #artistsButton:active, #albumsButton:active, #aboutAuthorButton:active, #playlistButton:active {
			position:relative;
			top:1px;
		}
		#logoutButton {
			box-shadow:inset 0px 1px 0px 0px #9fb4f2;
			background-color:#7892c2;
			border-radius:9px;
			border:2px solid #4e6096;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:18px;
			font-weight:bold;
			padding:6px 24px;
			text-decoration:none;
			text-shadow:0px 1px 0px #283966;
			margin-top: 12px;
		}
		#logoutButton:hover {
			background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
			background-color:#476e9e;
		}
		#logoutButton:active {
			position:relative;
			top:1px;
		}
		#FacebookButton {
			box-shadow:inset 0px 1px 0px 0px #97c4fe;
			background:linear-gradient(to bottom, #3d94f6 5%, #1e62d0 100%);
			background-color:#3d94f6;
			border-radius:6px;
			border:1px solid #337fed;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:18px;
			font-weight:bold;
			padding:9px 24px;
			text-decoration:none;
			text-shadow:0px 1px 0px #1570cd;
		}
		#FacebookButton:hover {
			background:linear-gradient(to bottom, #1e62d0 5%, #3d94f6 100%);
			background-color:#1e62d0;
		}
		#FacebookButton:active {
			position:relative;
			top:1px;
		}
		#GithubButton {
			box-shadow: inset 0px 1px 0px 0px #cf866c;
			background: linear-gradient(to bottom, #d0451b 5%, #bc3315 100%);
			background-color: #d0451b;
			border-radius: 6px;
			border: 1px solid #942911;
			display: inline-block;
			cursor: pointer;
			color: #ffffff;
			font-family: Arial;
			font-size: 18px;
			font-weight: bold;
			padding: 9px 24px;
			text-decoration: none;
			text-shadow: 0px 1px 0px #854629;
		}
		#GithubButton:hover {
			background:linear-gradient(to bottom, #bc3315 5%, #d0451b 100%);
			background-color:#bc3315;
		}
		#GithubButton:active {
			position:relative;
			top:1px;
		}
	    #LinkedInButton {
	        box-shadow: inset 0px 1px 0px 0px #23395e;
	        background: linear-gradient(to bottom, #2e466e 5%, #415989 100%);
	        background-color: #2e466e;
	        border-radius: 6px;
	        border: 1px solid #1f2f47;
	        display: inline-block;
	        cursor: pointer;
	        color: #ffffff;
	        font-family: Arial;
	        font-size: 18px;
	        font-weight: bold;
	        padding: 9px 24px;
	        text-decoration: none;
	        text-shadow: 0px 1px 0px #ffffff;
	    }
		#LinkedInButton:hover {
			background:linear-gradient(to bottom, #415989 5%, #2e466e 100%);
			background-color:#415989;
		}
		#LinkedInButton:active {
			position:relative;
			top:1px;
		}

		</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Button ID="songsButton" runat="server" Text="Songs" Width="139px" Height="37px" OnClick="songsButton_Click" />
			<asp:Button ID="artistsButton" runat="server" Text="Artists" Width="139px" Height="37px" OnClick="artistsButton_Click" />
			<asp:Button ID="albumsButton" runat="server" Text="Albums" Width="139px" Height="37px" OnClick="albumsButton_Click" />
			<asp:Button ID="playlistButton" runat="server" Height="37px" OnClick="playlistButton_Click" Text="Playlists" />
			<asp:Button ID="aboutAuthorButton" runat="server" Text="About me" Width="139px" Height="37px" OnClick="aboutAuthorButton_Click" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="logoutButton" runat="server" Text="Logout" Width="139px" Height="37px" OnClick="logoutButton_Click" />
		</div>
		<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
			<br />
			<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Names="Sitka Text" Font-Size="X-Large" ForeColor="#CC0000" HorizontalAlign="center" Text="About me"></asp:Label>
			<br />
		</asp:Panel>
		<asp:Image ID="Image1" runat="server" Height="487px" ImageUrl="~/Images/myPhoto.png" Width="449px" />
		<br />
		<br />
		<asp:Panel ID="Panel2" runat="server" Font-Size="Large">
			<asp:Label ID="Label1" runat="server" Text="Hi! My name is Przemek and I'm 22 years old. " Font-Bold="True" Font-Size="X-Large"></asp:Label>
			<br />
			<br />
			I am a third year information technology student at University of Zielona Góra. Programming is my true passion and something I&#39;d like to do in my future job.
			<br />
			I&#39;m mostly interested in developing a web app with the use of .NET technology and C# language, and also programming mobile apps for Android.
			<br />
			Up to this moment I had pleasure of being on an intership in Metapack and LUMEL, both located in Zielona Góra.
			<br />
			I&#39;m encouraging you to take a look at my portfolio.<br />
			<br />
		</asp:Panel>
		<p>
			<asp:Button ID="FacebookButton" runat="server" Text="Facebook" OnClick="FacebookButton_Click" />
			&nbsp;
			<asp:Button ID="GithubButton" runat="server" Text="Github" Width="170px" OnClick="GithubButton_Click" />
			&nbsp;
			<asp:Button ID="LinkedInButton" runat="server" Text="LinkedIn" OnClick="LinkedInButton_Click" Width="166px" />
		</p>
	</form>
</body>
</html>
