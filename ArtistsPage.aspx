<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArtistsPage.aspx.cs" Inherits="SongRepository.ArtistsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title></title>
	<style type="text/css">
	 #songsButton, #artistsButton, #albumsButton, #aboutAuthorButton, #AddArtistButtonFromPanel {
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
		#songsButton:hover, #artistsButton:hover, #albumsButton:hover, #aboutAuthorButton:hover, #AddArtistButtonFromPanel:hover {
			background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
			background-color:#c62d1f;
		}
		#songsButton:active, #artistsButton:active, #albumsButton:active, #aboutAuthorButton:active, #AddArtistButtonFromPanel:active {
			position:relative;
			top:1px;
		}
		#logoutButton, #AddArtistButton {
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
		#logoutButton:hover, #AddArtistButton:hover {
			background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
			background-color:#476e9e;
		}
		#logoutButton:active, #AddArtistButton:active {
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
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="logoutButton" runat="server" Text="Logout" Width="139px" Height="37px" />
		</div>
		<p>
			<br />
			</p>
		<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
			<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" HorizontalAlign="center" Text="List of artists" Font-Names="Sitka Text"></asp:Label>
		</asp:Panel>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Artists]"></asp:SqlDataSource>
		<br />
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="257px" Width="892px">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
				<asp:BoundField DataField="Name" HeaderText="Pseudonim" SortExpression="Name" />
				<asp:BoundField DataField="DateOfBirth" HeaderText="Data urodzenia / powstania" SortExpression="DateOfBirth" />
				<asp:BoundField DataField="Genres" HeaderText="Gatunki" SortExpression="Genres" />
				<asp:BoundField DataField="CountryOfBirth" HeaderText="Kraj pochodzenia" SortExpression="CountryOfBirth" />
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
		<asp:Button ID="AddArtistButton" runat="server" Text="Dodaj wykonawcę" OnClick="AddArtistButton_Click" />
		<br />
		<asp:Panel ID="ArtistAddPanel" runat="server">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Panel dodawania wykonawcy" Font-Bold="True" Font-Names="Sitka Text" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Pseudonim"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="NickTb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Data urodzenia / powstania"></asp:Label>
            <br />
            <asp:Calendar ID="DataCalendar" runat="server"></asp:Calendar>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Gatunki"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="GenresTb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Kraj pochodzenia"></asp:Label>
            &nbsp;
            <asp:TextBox ID="CountryTb" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="AddArtistButtonFromPanel" runat="server" Text="Dodaj " OnClick="AddArtistButtonFromPanel_Click" />
		</asp:Panel>
	</form>
</body>
</html>
