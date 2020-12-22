<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SongsPage.aspx.cs" Inherits="SongRepository.SongsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title></title>
	<style type="text/css">

		#songsButton, #artistsButton, #albumsButton, #aboutAuthorButton, #AddSongButtonPanel, #playlistButton {
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
		#songsButton:hover, #artistsButton:hover, #albumsButton:hover, #aboutAuthorButton:hover, #playlistButton:hover,
		#AddSongButtonPanel:hover{
			background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
			background-color:#c62d1f;
		}
		#songsButton:active, #artistsButton:active, #albumsButton:active, #aboutAuthorButton:active,
		#AddSongButtonPanel:active, #playlistButton:active{
			position:relative;
			top:1px;
		}
		#logoutButton, #AddSongButton {
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
		#logoutButton:hover, #AddSongButton:hover {
			background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
			background-color:#476e9e;
		}
		#logoutButton:active, #AddSongButton:active {
			position:relative;
			top:1px;
		}
		</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Button ID="songsButton" runat="server" Text="Songs" Width="139px" Height="37px" />
			<asp:Button ID="artistsButton" runat="server" Text="Artists" Width="139px" Height="37px" OnClick="artistsButton_Click" />
			<asp:Button ID="albumsButton" runat="server" Text="Albums" Width="139px" Height="37px" OnClick="albumsButton_Click" />
			<asp:Button ID="playlistButton" runat="server" Height="37px" OnClick="playlistButton_Click" Text="Playlists" />
			<asp:Button ID="aboutAuthorButton" runat="server" Text="About me" Width="139px" Height="37px" OnClick="aboutAuthorButton_Click" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="logoutButton" runat="server" Text="Logout" Width="139px" Height="37px" />
		</div>
		<p>
			&nbsp;</p>
		<asp:Panel ID="PanelTitle" runat="server" HorizontalAlign="Center">
			<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Text="List of songs" Font-Names="Sitka Text"></asp:Label>
			<br />
			<br />
			<br />
		</asp:Panel>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Songs]" DeleteCommand="DELETE FROM [Songs] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Songs] ([Name], [Length], [Genre], [Tempo], [AlbumName], [ArtistName]) VALUES (@Name, @Length, @Genre, @Tempo, @AlbumName, @ArtistName)" UpdateCommand="UPDATE [Songs] SET [Name] = @Name, [Length] = @Length, [Genre] = @Genre, [Tempo] = @Tempo, [AlbumName] = @AlbumName, [ArtistName] = @ArtistName WHERE [Id] = @Id">
			<DeleteParameters>
				<asp:Parameter Name="Id" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="Length" Type="String" />
				<asp:Parameter Name="Genre" Type="String" />
				<asp:Parameter Name="Tempo" Type="String" />
				<asp:Parameter Name="AlbumName" Type="String" />
				<asp:Parameter Name="ArtistName" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="Length" Type="String" />
				<asp:Parameter Name="Genre" Type="String" />
				<asp:Parameter Name="Tempo" Type="String" />
				<asp:Parameter Name="AlbumName" Type="String" />
				<asp:Parameter Name="ArtistName" Type="String" />
				<asp:Parameter Name="Id" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Albums]"></asp:SqlDataSource>
		<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Artists]"></asp:SqlDataSource>
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="242px" Width="813px" AllowSorting="True">
			<Columns>
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
				<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
				<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
				<asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
				<asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
				<asp:BoundField DataField="Tempo" HeaderText="Tempo" SortExpression="Tempo" />
				<asp:BoundField DataField="AlbumName" HeaderText="AlbumName" SortExpression="AlbumName" />
				<asp:BoundField DataField="ArtistName" HeaderText="ArtistName" SortExpression="ArtistName" />
			</Columns>
			<FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
			<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
			<PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
			<RowStyle BackColor="White" ForeColor="#330099" />
			<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
			<SortedAscendingCellStyle BackColor="#FEFCEB" />
			<SortedAscendingHeaderStyle BackColor="#AF0101" />
			<SortedDescendingCellStyle BackColor="#F6F0C0" />
			<SortedDescendingHeaderStyle BackColor="#7E0000" />
		</asp:GridView>
		<p>
			<asp:Button ID="AddSongButton" runat="server" OnClick="AddAlbumButton_Click" Text="Add song" />
		</p>
		<asp:Panel ID="AddSongPanel" runat="server">
			<asp:Label ID="Label1" runat="server" Text="Add song panel" Font-Bold="True" Font-Names="Sitka Text" Font-Size="Large"></asp:Label>
			<br />
			<br />
			<asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
			&nbsp;&nbsp;
			<asp:TextBox ID="NameTb" runat="server"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label3" runat="server" Text="Length"></asp:Label>
			&nbsp;
			<asp:TextBox ID="MinTb" runat="server" Width="38px"></asp:TextBox>
			&nbsp;
			<asp:Label ID="Label4" runat="server" Text="min"></asp:Label>
			&nbsp;
			<asp:TextBox ID="SecTb" runat="server" Width="38px"></asp:TextBox>
			&nbsp; s<br />
			<br />
			<asp:Label ID="Label5" runat="server" Text="Genres"></asp:Label>
			&nbsp;
			<asp:TextBox ID="GenresTb" runat="server"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label6" runat="server" Text="Tempo"></asp:Label>
			&nbsp;
			<asp:DropDownList ID="TempoDropdown" runat="server" Width="167px">
				<asp:ListItem>Slow</asp:ListItem>
				<asp:ListItem>Medium</asp:ListItem>
				<asp:ListItem>Fast</asp:ListItem>
			</asp:DropDownList>
			<br />
			<br />
			<asp:Label ID="Label7" runat="server" Text="Album"></asp:Label>
			&nbsp;
			<asp:DropDownList ID="AlbumDropdown" runat="server" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title">
			</asp:DropDownList>
			<br />
			<br />
			<asp:Label ID="Label8" runat="server" Text="Artist"></asp:Label>
			&nbsp;&nbsp;
			<asp:DropDownList ID="ArtistDropdown" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name">
			</asp:DropDownList>
			<br />
			<br />
			<br />
			<asp:Button ID="AddSongButtonPanel" runat="server" Text="Add" OnClick="AddSongButtonPanel_Click" />
		</asp:Panel>
	</form>
</body>
</html>
