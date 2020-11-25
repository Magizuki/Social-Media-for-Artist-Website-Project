using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SosArt.View
{
    public partial class AboutUs_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.facebook.com/");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://twitter.com/explore");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.instagram.com/?hl=id");
        }

        protected void SignUpBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp_Page.aspx");
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn_Page.aspx");
        }

        protected void ContactBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs_Page.aspx");
        }

        protected void AboutUsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs_Page.aspx");
        }

        protected void IntroBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Intro_Page.aspx");
        }

        protected void SignUpbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp_Page.aspx");
        }
    }
}