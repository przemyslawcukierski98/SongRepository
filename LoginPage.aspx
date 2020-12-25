<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SongRepository.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Login page</title>
	<style>
		#RegisterButton, #SignInButton {
			box-shadow:inset 0px 1px 0px 0px #2a9df4;
			background:linear-gradient(to bottom, #187bcd 5%, #187bcd 100%);
			background-color:#187bcd;
			border-radius:9px;
			border:2px solid #03254c;
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
	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Panel ID="Panel1" runat="server" Height="52px" HorizontalAlign="Center">
				<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" HorizontalAlign="center" Text="Log in your account to continue" Font-Names="Sitka Text"></asp:Label>
			</asp:Panel>
		</div>
		<asp:Panel ID="Panel2" runat="server" Height="336px" HorizontalAlign="Center">
			<br />
			<asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Size="Large"></asp:Label>
			<br />
			<br />
			<asp:TextBox ID="LoginTb" runat="server" Width="255px" style="margin-left: 0px"></asp:TextBox>
			<br />
			<br />
			<br />
			<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password"></asp:Label>
			<br />
			<br />
			<asp:TextBox ID="PasswordTb" runat="server" Width="256px"></asp:TextBox>
			<br />
			<br />
			<br />
			<br />
			<asp:Button ID="RegisterButton" runat="server" Text="Login" Width="162px" OnClick="RegisterButton_Click" />
			<asp:Button ID="SignInButton" runat="server" Text="Sign up " Width="299px" OnClick="SignInButton_Click" />
		</asp:Panel>
	</form>
</body>
</html>
