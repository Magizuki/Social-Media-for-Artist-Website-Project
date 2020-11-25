<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn_Page.aspx.cs" Inherits="SosArt.View.SignIn_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <link href="../StyleSheet.css" rel="stylesheet" />
</head>
<body style="background-color:black">
    <form id="form1" runat="server">
    <div class="header">
        <h2 class="title">SosArt</h2>
        <img alt="" src="Sosart.png"  />
        <div class="navbar justify-content-center navbar-dark ">    
            
            <asp:Button ID="ContactBtn" class="btn btn-outline-light" OnClick="ContactBtn_Click" runat="server" Text="Contact Us" />
            <asp:Button ID="AboutUsBtn" class="btn btn-outline-light" OnClick="AboutUsBtn_Click" runat="server" Text="About Us" />
            <asp:Button ID="IntroBtn" class="btn btn-outline-light" OnClick="IntroBtn_Click" runat="server" Text="Intro" />
            <asp:Button ID="LoginButton" class="btn btn-outline-light" OnClick="LoginButton_Click" runat="server" Text="Log In" />
            <asp:Button ID="SignUpbutton" class="btn btn-outline-light" OnClick="SignUpbutton_Click" runat="server" Text="Sign Up" />      
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container" id="SignLogIn" >
        
        <div class="rounded-sm" style="background-color:white">
        <div class="col">
        <br />
        <div class="align-self-center">
            <h1 style="text-align:center; font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif" >LOG IN</h1>
        </div>
        <hr />
        <br />
        <div class="align-self-end">
             <asp:Button ID="SignUpBtn" class="btn btn-outline-dark" OnClick="SignUpBtn_Click1" runat="server" Text="Need an account ? Sign Up" />
        </div>
       <br />
        <div class="form-group row">
            <asp:Label ID="Label2" runat="server" class="col-sm-2 col-form-label" Text="Email or Username"></asp:Label>
            <br />
            <asp:TextBox ID="EmailUsernameTxt" class="form-control" runat="server" placeholder="Email or Username" Width="627px"></asp:TextBox>
            <asp:Label ID="EmailUsernameErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group row">
            <asp:Label ID="Label4" runat="server" class="col-sm-2 col-form-label" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="PassTxt" class="form-control" runat="server" placeholder="Password" Width="627px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="PassErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
            <asp:Button ID="LogInBtn" class="btn btn-primary" OnClick="LogInBtn_Click1" runat="server" Text="CONTINUE"  />
            <asp:Button ID="ForgotPassBtn" class="btn btn-primary" OnClick="ForgotPassBtn_Click" runat="server" Text="Forgot your password ?" />
            </div>
        </div>
        <div class="form-group">
             <asp:CheckBox ID="Rememberme_Check"  runat="server" class="col-sm-2 col-form-label" />
             <asp:Label ID="Label7" runat="server" Text="Remember me"></asp:Label>
            <br />
        </div>
        <br />
        </div> 
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="navbar navbar-expand-sm  navbar-dark bg-dark">
        <div class="footer">
            <h3>Check our last update</h3>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >
                <asp:Image class ="Image" runat="server" src="LogoFacebook.png" />
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >
                <asp:Image class ="Image" runat="server" src="LogoTwitter.png" />     
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >
                <asp:Image class ="Image" runat="server" src="instagramLogo.png" />
            </asp:LinkButton>
        </div>
    </div>
    </form>
</body>
</html>
