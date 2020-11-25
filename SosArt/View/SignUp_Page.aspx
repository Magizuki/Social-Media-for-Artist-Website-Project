<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp_Page.aspx.cs" Inherits="SosArt.View.SignUp_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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
        <div class="rounded-sm" style="background-color:aliceblue">
        <div class="col">
        <br />
        <div class="align-self-center">
            <h1 style="text-align:center; font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif" >SIGN UP</h1>
        </div>
        <hr />
        <br />
            <div>
                <asp:Label ID="Label8" runat="server" Text="By signing up, I confirm that I am at least 13 years of age."></asp:Label>
            </div>
        <br />
        <div class="form-group row" >
            <asp:Label ID="Label1"  runat="server" class="col-sm-2 col-form-label" Text="Full Name"></asp:Label>
            <br />
            <asp:TextBox ID="FullNameTxt" class="form-control" runat="server" placeholder="Full name" Width="605px"></asp:TextBox>
            <asp:Label ID="FullnameErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group row">
            <asp:Label ID="Label2" runat="server" class="col-sm-2 col-form-label" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="EmailTxt" class="form-control" runat="server" placeholder="Email" Width="603px"></asp:TextBox>
            <asp:Label ID="EmailErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group row">
            <asp:Label ID="Label3" runat="server" class="col-sm-2 col-form-label" Text="User Name"></asp:Label>
            <br />
            <asp:TextBox ID="UserNameTxt" class="form-control" runat="server" placeholder="User name" Width="601px"></asp:TextBox>
            <asp:Label ID="UsernameErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group row">
            <asp:Label ID="Label4" runat="server" class="col-sm-2 col-form-label" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="PassTxt" class="form-control" runat="server" placeholder="Password" Width="600px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="PassErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group row">
            <asp:Label ID="Label5" runat="server" class="col-sm-2 col-form-label" Text="Confirm Password"></asp:Label>
            <br />
            <asp:TextBox ID="ConfPassTxt" class="form-control" runat="server" placeholder="Confirm password" Width="600px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="ConfpassErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group row">
            <asp:Label ID="Label9" runat="server" class="col-sm-2 col-form-label" Text="Account number"></asp:Label>
            <br />
            <asp:TextBox ID="AccountNumTxt" class="form-control" runat="server" placeholder="Account number" Width="600px"></asp:TextBox>
            <asp:Label ID="AccountNumErrorlbl"  runat="server" Text=""></asp:Label>
        </div>
         <div class="form-group row">
            <asp:Label ID="Label6" runat="server" class="col-sm-2 col-form-label" Text="Gender"></asp:Label>
             <br />
             <asp:RadioButtonList ID="Gender" runat="server">
                 <asp:ListItem>Male</asp:ListItem>
                 <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList>
             <asp:Label ID="GenderErrorlbl"  runat="server" Text=""></asp:Label>
            <br />
        </div>
         <div class="form-group">
             <asp:CheckBox ID="Term_Check"  runat="server" class="col-sm-2 col-form-label" />
            <asp:Label ID="Label7" runat="server" Text="Agreement to terms and services"></asp:Label>
             <asp:Label ID="TermErrorlbl"  runat="server" Text=""></asp:Label>
            <br />
        </div>
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
            <asp:Button ID="SignUpBtn" class="btn btn-primary" OnClick="SignUpBtn_Click1" runat="server" Text="AGREE & CONTINUE" />
            </div>
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
