<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Intro_Page.aspx.cs" Inherits="SosArt.View.Intro_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Introduction</title>
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
    <div class="container" style="text-align:center">
        <br />
        <div>
            <h1 style="text-align:center; color:white; font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size:60px">SosArt</h1>
            <img alt="" src="Sosart.png"  style="text-align:center" />
            <br />
            <h2 style="text-align:center; color:white; font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;">Social Media for Artist</h2>
        </div>
        <br />
        <div>
            <h1 style="color:snow;text-align:center;font-family:Verdana">Find your next creative project and share it with your team or your friend on SosArt</h1>
        </div>
        <div class="align-self-end" style="text-align:center">
             <asp:Button ID="SignUpBtn" class="btn btn-outline-light" OnClick="SignUpBtn_Click" runat="server" Text="SIGN UP" />
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <div class="navbar navbar-expand-sm  navbar-dark bg-dark">
        <div class="footer">
            <h3>Check our last update</h3>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                <asp:Image class ="Image" runat="server" src="LogoFacebook.png" />
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                <asp:Image class ="Image" runat="server" src="LogoTwitter.png" />     
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
                <asp:Image class ="Image" runat="server" src="instagramLogo.png" />
            </asp:LinkButton>
        </div>
    </div>
    </form>
</body>
</html>
