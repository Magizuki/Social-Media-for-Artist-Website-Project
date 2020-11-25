<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs_Page.aspx.cs" Inherits="SosArt.View.ContactUs_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact US</title>
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
        <h1 style="color: whitesmoke; text-align:center">Contact Us</h1>
        <br />
        <img alt="" src="ContactUs-Content.jpg"  />
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
