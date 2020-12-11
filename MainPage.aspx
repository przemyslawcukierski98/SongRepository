<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="SongRepository.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Main page</title>
	<style>
		#songsButton, #artistsButton, #albumsButton, #aboutAuthorButton {
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
		.songsButton:hover, #artistsButton:hover, #albumsButton:hover, #aboutAuthorButton:hover {
			background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
			background-color:#c62d1f;
		}
		.myButton:active, #artistsButton:active, #albumsButton:active, #aboutAuthorButton:active {
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
	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Button ID="songsButton" runat="server" Text="Songs" Width="139px" Height="37px" />
			<asp:Button ID="artistsButton" runat="server" Text="Artists" Width="139px" Height="37px" />
			<asp:Button ID="albumsButton" runat="server" Text="Albums" Width="139px" Height="37px" />
			<asp:Button ID="aboutAuthorButton" runat="server" Text="About me" Width="139px" Height="37px" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="logoutButton" runat="server" Text="Logout" Width="139px" Height="37px" />
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<br />
        <br />
        <br />
        <asp:Panel ID="PanelTitle" runat="server" HorizontalAlign="Center">
            <asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Text="Song repository - music catalogue application"></asp:Label>
            <br />
            <br />
            <br />
        </asp:Panel>
&nbsp;&nbsp;
        <asp:Panel ID="PanelImage" runat="server" HorizontalAlign="Center">
            <asp:Image ID="Image1" runat="server" Height="340px" ImageUrl="~/Images/musicMainPage.jpg" Width="377px" />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="PanelPageDescription" runat="server" HorizontalAlign="Center">
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Przemysław Cukierski (C), 2020"></asp:Label>
        </asp:Panel>
        <br />
&nbsp;</form>
</body>
</html>
