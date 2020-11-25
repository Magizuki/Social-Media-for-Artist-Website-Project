<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="SosArt.View.Library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Library</title>
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
                <li class="nav-item">
                     <a class="nav-link" href="Home.aspx">Home </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Library.aspx">My Library <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Profile.aspx">My Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="SignIn_Page.aspx">Sign Out</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            
        </div>
    </nav>
    <form id="form1" runat="server">
    <br />
    <br />
    <div class="Library-Content">
        <div class="container" >
            <h1 style="font-family:Verdana, Geneva, Tahoma, sans-serif; color:azure; text-align:center">My Library</h1>
            <hr />
            <br />
            <asp:Button ID="AddNewCreationBtn" class="btn btn-primary" runat="server" Text="Add New Creation" OnClick="AddNewCreationBtn_Click" />
            <asp:Button ID="ViewOpinionBtn" class="btn btn-primary" runat="server" Text="View Opinion" OnClick="ViewOpinionBtn_Click" />
            <br />
            <br />
            <asp:GridView ID="ImageList" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Picture" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[]) Eval("Picture")) %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
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
