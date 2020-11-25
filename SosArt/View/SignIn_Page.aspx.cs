using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SosArt.Repository;

namespace SosArt.View
{
    public partial class SignIn_Page : System.Web.UI.Page
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

        protected void LoginButton_Click(object sender, EventArgs e)
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

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn_Page.aspx");
        }

        protected void ForgotPassBtn_Click(object sender, EventArgs e)
        {

        }

        protected void SignUpBtn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SignUp_Page.aspx");
        }

        protected void LogInBtn_Click1(object sender, EventArgs e)
        {
            String pass = PassTxt.Text;
            String EmailOrUsername = EmailUsernameTxt.Text;
            bool cekEmailPass = UserRepository.cekEmailPass(EmailOrUsername, pass);

            if(EmailOrUsername.Equals(""))
            {
                EmailUsernameErrorlbl.Text = "Email or Username must be filled !";
            }
            if(pass.Equals(""))
            {
                PassErrorlbl.Text = "Password must be filled !";
            }
            else
            {
                if(!cekEmailPass)
                {
                    Session["Email"] = EmailOrUsername;
                    Session["Pass"] = pass;
                    Session["RoleID"] = UserRepository.getRoleID(EmailOrUsername);
                    Session["Username"] = UserRepository.getUserName(EmailOrUsername);
                    Response.Redirect("Home.aspx");
                }
            }

            

        }
    }
}