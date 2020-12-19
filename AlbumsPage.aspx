<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlbumsPage.aspx.cs" Inherits="SongRepository.AlbumsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title></title>
	<style type="text/css">
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
		#songsButton:hover, #artistsButton:hover, #albumsButton:hover, #aboutAuthorButton:hover {
			background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
			background-color:#c62d1f;
		}
		#songsButton:active, #artistsButton:active, #albumsButton:active, #aboutAuthorButton:active {
			position:relative;
			top:1px;
		}
		#logoutButton, #AddAlbumButton, #AddAlbumButtonFromPanel {
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
		#logoutButton:hover, #AddAlbumButton:hover, #AddAlbumButtonFromPanel:hover {
			background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
			background-color:#476e9e;
		}
		#logoutButton:active, #AddAlbumButton:active, #AddAlbumButtonFromPanel:active {
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
			<asp:Button ID="aboutAuthorButton" runat="server" Text="About me" Width="139px" Height="37px" OnClick="aboutAuthorButton_Click" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="logoutButton" runat="server" Text="Logout" Width="139px" Height="37px" />
		</div>
		<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
			<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" HorizontalAlign="center" Text="List of albums" Font-Names="Sitka Text"></asp:Label>
		</asp:Panel>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Albums]"></asp:SqlDataSource>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Artists]"></asp:SqlDataSource>
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="306px" Width="902px">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
				<asp:BoundField DataField="Title" HeaderText="Album name" SortExpression="Title" />
				<asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
				<asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
				<asp:BoundField DataField="ReleaseDate" HeaderText="Release date" SortExpression="ReleaseDate" />
				<asp:BoundField DataField="ArtistName" HeaderText="Artist name" SortExpression="ArtistName" />
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
		<p>
			<asp:Button ID="AddAlbumButton" runat="server" OnClick="AddAlbumButton_Click" Text="Dodaj album" />
        </p>
		<asp:Panel ID="AddAlbumPanel" runat="server">
			<asp:Label ID="Label1" runat="server" Text="Panel dodawania albumu" Font-Bold="True" Font-Names="Sitka Text" Font-Size="Large"></asp:Label>
			<br />
			<br />
			<asp:Label ID="Label2" runat="server" Text="Tytuł"></asp:Label>
			&nbsp;&nbsp;
			<asp:TextBox ID="TitleTb" runat="server"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label3" runat="server" Text="Gatunki"></asp:Label>
			&nbsp;&nbsp;
			<asp:TextBox ID="GenresTb" runat="server"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label4" runat="server" Text="Długość"></asp:Label>
			&nbsp;&nbsp;
			<asp:TextBox ID="MinTb" runat="server" Width="50px"></asp:TextBox>
			&nbsp; min
			<asp:TextBox ID="SecTb" runat="server" Width="50px"></asp:TextBox>
			&nbsp;s
			<br />
			<br />
			<asp:Label ID="Label5" runat="server" Text="Data wydania"></asp:Label>
			&nbsp;<br />
			<asp:Calendar ID="DateCalendar" runat="server"></asp:Calendar>
			<br />
			Artysta&nbsp;&nbsp;&nbsp;
			<asp:DropDownList ID="ArtistDropdown" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name">
			</asp:DropDownList>
			<br />
			<br />
			<asp:Button ID="AddAlbumButtonFromPanel" runat="server" OnClick="AddArtistButtonFromPanel_Click" Text="Dodaj " />
			<br />
			<br />
			<br />
			<br />
		</asp:Panel>
	</form>
</body>
</html>
