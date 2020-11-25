<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewCreation.aspx.cs" Inherits="SosArt.View.AddNewCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Creation</title>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <link href="../StyleSheet.css" rel="stylesheet" />
</head>
<body style="background-color:black">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#" style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif">SosArt</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
            </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                     <a class="nav-link" href="Home.aspx" >Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Library.aspx">My Library</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Profile.aspx">My Profile</a>
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
    <form id="form1" runat="server">
    <div class="NewCreation-Content" style="color:white">
        <div class="container" >
            <asp:FileUpload ID="ImageUpload" runat="server" style="color:whitesmoke" />
            <asp:Button ID="BrowseBtn" runat="server" Text="Browse" OnClick="BrowseBtn_Click" />
            <br />
            <asp:Image ID="MyImage" runat="server" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="TitleTxt" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="PriceTxt" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="AddNewPictureBtn" runat="server" Text="Add to My Library" OnClick="AddNewPictureBtn_Click" />
        </div>
    </div>
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
