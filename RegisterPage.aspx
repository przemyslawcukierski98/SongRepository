<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="SongRepository.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Register Page</title>
	<style>
		#RegisterButton, #SignInButton {
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
	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Panel ID="Panel1" runat="server" Height="52px" HorizontalAlign="Center">
				<asp:Label ID="titleLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" HorizontalAlign="center" Text="No account? Sign up!" Font-Names="Sitka Text"></asp:Label>
			</asp:Panel>
		</div>
		<asp:Panel ID="RegisterPanel" runat="server" Height="330px" HorizontalAlign="Center">
			<br />
			<asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Size="Large"></asp:Label>
			<br />
			<br />
			<asp:TextBox ID="LoginTb" runat="server" Width="278px"></asp:TextBox>
			<br />
			<br />
			<br />
			<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password"></asp:Label>
			<br />
			<br />
			&nbsp;<asp:TextBox ID="PasswordTb" runat="server" Width="281px" TextMode="Password"></asp:TextBox>
			<br />
			<br />
			<br />
			<br />
			<asp:Button ID="RegisterButton" runat="server" Text="Register" Width="162px" />
			<asp:Button ID="SignInButton" runat="server" Text="Sign in to your account" Width="299px" />
		</asp:Panel>
	</form>
</body>
</html>
