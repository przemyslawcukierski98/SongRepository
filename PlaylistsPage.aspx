<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaylistsPage.aspx.cs" Inherits="SongRepository.PlaylistsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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

		#logoutButton, #AddPlaylistButton, #AddPlaylistButtonFromPanel, #SelectNumberOfSongsButton {
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
		#logoutButton:hover, #AddPlaylistButton:hover, #AddPlaylistButtonFromPanel:hover, #SelectNumberOfSongsButton:hover {
			background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
			background-color:#476e9e;
		}
		#logoutButton:active, #AddPlaylistButton:active, #AddPlaylistButtonFromPanel:active, #SelectNumberOfSongsButton:active {
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
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="logoutButton" runat="server" Text="Logout" Width="120px" Height="37px" style="margin-left: 0px" />
		</div>
		<asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
			<br />
			<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" HorizontalAlign="center" Text="Make your playlist" Font-Names="Sitka Text"></asp:Label>
		</asp:Panel>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Songs]"></asp:SqlDataSource>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
		<p>
			<asp:Label ID="titleLabel0" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" HorizontalAlign="center" Text="How many songs should the playlist have?" Font-Names="Sitka Text"></asp:Label>
		</p>
		<asp:RadioButtonList ID="HowManySongsRadioList" runat="server">
			<asp:ListItem>3</asp:ListItem>
			<asp:ListItem>5</asp:ListItem>
			<asp:ListItem>7</asp:ListItem>
			<asp:ListItem>10</asp:ListItem>
		</asp:RadioButtonList>
		<br />
        <asp:Label ID="Label11" runat="server" Text="Playlist name"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="PlaylistNameTb" runat="server"></asp:TextBox>
        <br />
		<br />
		<asp:Button ID="SelectNumberOfSongsButton" runat="server" Text="Select" OnClick="SelectNumberOfSongsButton_Click" />
		<br />
		<br />
		<br />
			<asp:Label ID="titleLabel1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" HorizontalAlign="center" Text="Which songs do you want to add to the playlist?" Font-Names="Sitka Text"></asp:Label>
		<br />
		<br />
		<br />
		<asp:Panel runat="server" Height="151px" style="margin-top: 0px" ID="FirstSongsPanel">
			<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="1. "></asp:Label>
			&nbsp;
			<asp:DropDownList ID="FirstSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
			</asp:DropDownList>
			<br />
			<br />
			<asp:Label ID="Label2" runat="server" Font-Bold="True" Text="2. "></asp:Label>
&nbsp;
			<asp:DropDownList ID="SecondSongDropDown0" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
			</asp:DropDownList>
			<br />
			<br />
			<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="3."></asp:Label>
			&nbsp;&nbsp;
			<asp:DropDownList ID="ThirdSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
			</asp:DropDownList>
			<br />
			<br />
			<br />
			<br />
			<br />
			<asp:Panel ID="ThirdSongsPanel" runat="server" Height="139px" style="margin-top: 46px">
				<br />
				<br />
				<asp:Label ID="Label8" runat="server" Font-Bold="True" Text="6."></asp:Label>
				&nbsp;
				<asp:DropDownList ID="EighthSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
				</asp:DropDownList>
				<br />
				<br />
				<asp:Label ID="Label9" runat="server" Font-Bold="True" Text="7."></asp:Label>
				&nbsp;&nbsp;
				<asp:DropDownList ID="NinethSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
				</asp:DropDownList>
				<br />
				<br />
				<br />
			</asp:Panel>
			<asp:Panel ID="FourthSongsPanel" runat="server" style="margin-top: 17px">
				<br />
				<asp:Label ID="Label4" runat="server" Font-Bold="True" Text="8."></asp:Label>
				&nbsp;&nbsp;
				<asp:DropDownList ID="FourthSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
				</asp:DropDownList>
				<br />
				<br />
				<asp:Label ID="Label5" runat="server" Font-Bold="True" Text="9."></asp:Label>
				&nbsp;&nbsp;
				<asp:DropDownList ID="FifthSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
				</asp:DropDownList>
				<br />
				<br />
				<asp:Label ID="Label10" runat="server" Font-Bold="True" Text="10."></asp:Label>
				&nbsp;
				<asp:DropDownList ID="TenthSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
				</asp:DropDownList>
			</asp:Panel>
			<br />
			<br />
			<asp:Button ID="AddPlaylistButton" runat="server" Text="Add playlist" OnClick="AddPlaylistButton_Click" />
			<br />
			<br />
			<br />
			<asp:Label ID="titleLabel2" runat="server" Font-Bold="True" Font-Names="Sitka Text" Font-Size="X-Large" ForeColor="Blue" HorizontalAlign="center" Text="Your playlists:"></asp:Label>
			<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="276px" HorizontalAlign="Center" Width="1799px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="PlaylistName" HeaderText="Playlist name" SortExpression="PlaylistName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FirstSongName" HeaderText="1. song" SortExpression="FirstSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SecondSongName" HeaderText="2. song" SortExpression="SecondSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ThirdSongName" HeaderText="3. song" SortExpression="ThirdSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FourthSongName" HeaderText="4. song" SortExpression="FourthSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FifthSongName" HeaderText="5. song" SortExpression="FifthSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SixthSongName" HeaderText="6. song" SortExpression="SixthSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SeventhSongName" HeaderText="7. song" SortExpression="SeventhSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EighthSongName" HeaderText="8. song" SortExpression="EighthSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NinethSongName" HeaderText="9. song" SortExpression="NinethSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TenthSongName" HeaderText="10. song" SortExpression="TenthSongName">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
			<br />
			<br />
			<br />
		</asp:Panel>
		<asp:Panel ID="SecondSongsPanel" runat="server" Height="93px" style="margin-top: 17px">
			<asp:Label ID="Label6" runat="server" Font-Bold="True" Text="4."></asp:Label>
			&nbsp;&nbsp;
			<asp:DropDownList ID="SixthSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
			</asp:DropDownList>
			<br />
			<br />
			<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="5."></asp:Label>
			&nbsp;&nbsp;
			<asp:DropDownList ID="SeventhSongDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
			</asp:DropDownList>
			<br />
			<br />
			<br />
		</asp:Panel>
		<p>
			&nbsp;</p>
	</form>
</body>
</html>
