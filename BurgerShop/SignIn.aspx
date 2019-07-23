<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="BurgerShop.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In </title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body#LoginForm{ background-image:url("https://images.designtrends.com/wp-content/uploads/2016/02/25060758/Food-Burger-Wallpaper.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
        @import url(https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css);
.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.login-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}
.forgot {
  text-align: left; margin-bottom:30px;
}
.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}

    </style>
</head>
<body id="LoginForm">
    <form id="form1" runat="server">
        <div>
            
<div class="container">
<h1 class="form-heading">The Burger Shop</h1>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>Pizza Shop Login</h2>
   <p>Please enter your Username and password here</p>
   </div>
    <form id="Login">

        <div class="form-group">


        <asp:Label ID="Label3" runat="server" Text="Username"  Font-Size="Medium" ForeColor="black"></asp:Label>
       
            <br />
       
            <asp:TextBox class="form-control" ID="burgerlogin" runat="server"   BorderStyle="None" Height="20px"></asp:TextBox>
      
        <br />
      
        <asp:Label ID="Label1" runat="server" Text="Password"  Font-Size="Medium" ForeColor="black"></asp:Label>
        <br />
        <asp:TextBox class="form-control" ID="burgerpass" runat="server" Width="221px"  BorderStyle="None"></asp:TextBox>
       
            <br />
        <br />
       
            <asp:Button ID="loginbtn" runat="server" Text="Login"  BorderStyle="None" Height="27px" Width="64px" OnClick="loginbtn_Click"  />
                    <asp:Button ID="loginregister" runat="server" Text="Register Here"  BorderStyle="None"   Height="27px" Width="121px" OnClick="loginregister_Click"  />

            <br />

        </div>

        <div class="form-group">

           

        </div>
       
       

    </form>
    </div>
</div></div></div>

        
    </form>
</body>
</html>
