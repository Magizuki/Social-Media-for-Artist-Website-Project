<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SosArt.View.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <link href="../StyleSheet.css" rel="stylesheet" />
</head>
<body style="background-color:black">
    <form id="form1" runat="server">   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#" style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">SosArt</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
            </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                     <a class="nav-link" href="#">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">My Library</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">My Profile <span class="sr-only">(current)</span> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Sign Out</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
        </div>
    </nav>
    <br />
    <div>
        <h1 style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; color:azure; text-align:center">My Profile</h1>
    </div>
    <br />
    <div class="container " style="color:white; font-size: 30px; ">
        <div  class="form-group mx-5">
            <asp:Label ID="Label1" runat="server" Text="Full Name :"></asp:Label>
            <asp:Label ID="FullNamelbl" runat="server" Text=""></asp:Label>
            <asp:Button ID="ChangeFullNameBtn" class="btn btn-primary" runat="server" OnClick="ChangeFullNameBtn_Click" Text="Change Full name" />
        </div>
        <div class="form-group mx-5">
            <asp:Label ID="Label2" runat="server" Text="Username :"></asp:Label>
            <asp:Label ID="Usernamelbl" runat="server" Text=""></asp:Label>
            <asp:Button ID="ChangeUsernameBtn" class="btn btn-primary" runat="server" OnClick="ChangeUsernameBtn_Click" Text="Change Username" />
        </div>
        <div class="form-group mx-5">
            <asp:Label ID="Label4" runat="server" Text="Email :"></asp:Label>
            <asp:Label ID="Emaillbl" runat="server" Text=""></asp:Label>
            <asp:Button ID="ChangeEmailBtn" class="btn btn-primary" runat="server" OnClick="ChangeEmailBtn_Click" Text="Change Email" />
        </div>
        <div class="form-group mx-5">
            <asp:Label ID="Label6" runat="server" Text="Gender :"></asp:Label>
            <asp:Label ID="Genderlbl" runat="server" Text=""></asp:Label>
            <asp:Button ID="ChangeGenderBtn" class="btn btn-primary" runat="server" OnClick="ChangeGenderBtn_Click" Text="Change Gender" />
        </div>
        <div class="form-group mx-5">
            <asp:Label ID="Label8" runat="server" Text="Account Number :"></asp:Label>
            <asp:Label ID="AccountNumlbl" runat="server" Text=""></asp:Label>
            <asp:Button ID="ChangeAccountNumBtn" class="btn btn-primary" runat="server" OnClick="ChangeAccountNumBtn_Click" Text="Change Account number" />
        </div>
        <div class="form-group mx-5">
            <asp:Label ID="Label3" runat="server" Text="Role Name :"></asp:Label>
            <asp:Label ID="RoleNamelbl" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <br />
        <div style="text-align:center" class="form-group">
            <asp:Button ID="ChangePassBtn" class="btn btn-primary" runat="server" OnClick="ChangePassBtn_Click" Text="Change Password" />
        </div>
    </div>
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
