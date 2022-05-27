<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="MatRad.App.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Sign in</title>
</head>
<body>
    <form id="form1" runat="server" >   
    <div class="main">
    <p class="sign" align="center">Упиши се !!! </p>
      <asp:TextBox ID="email" runat="server" align="center"  class='un ' placeholder='Електронска пошта' type='text'></asp:TextBox>
        <asp:TextBox ID="loz" runat="server" class="pass" placeholder='Password' align="center" type='password' TextMode="Password" ValidateRequestMode="Disabled"></asp:TextBox>
       <asp:Button ID="Button1" runat="server" Text="LOGIN" class="submit" OnClick="Button1_Click" align="center" />
      <p class="forgot" align="center"><a href="#">Заборавио си лозинку ?</p>        
    </div>
</form>

</body>
</html>
