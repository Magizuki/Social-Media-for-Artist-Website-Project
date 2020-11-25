using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SosArt.Repository;

namespace SosArt.View
{
    public partial class SignUp_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignInBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn_Page.aspx");
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

        protected void SignUpBtn_Click1(object sender, EventArgs e)
        {
            String fullname = FullNameTxt.Text;
            String email = EmailTxt.Text;
            String username = UserNameTxt.Text;
            String pass1 = PassTxt.Text;
            String pass2 = ConfPassTxt.Text;
            String accountNum = AccountNumTxt.Text;
            String gender = Gender.SelectedItem.Text;
            bool cekEmail = UserRepository.cekEmail(email);

            if(fullname.Equals(""))
            {
                FullnameErrorlbl.Text = "Fullname must be filled !";
            }
            if(email.Equals("") || !cekEmail)
            {
                EmailErrorlbl.Text = "Email must be filled and unique !";
            }
            if(username.Equals(""))
            {
                UsernameErrorlbl.Text = "Username must be filled";
            }
            if(pass1.Equals(""))
            {
                PassErrorlbl.Text = "Password must be filled !";
            }
            if(pass1 != pass2)
            {
                ConfpassErrorlbl.Text = "Password must be same with confirm password !";
            }
            if(accountNum.Equals("") || (accountNum.Length < 13 || accountNum.Length > 13) )
            {
                AccountNumErrorlbl.Text = "Account Number must be filled and must have 13 character !";
            }
            if(!Term_Check.Checked)
            {
                TermErrorlbl.Text = "Agreement & Term must be checked !";
            }
            else
            {
                UserRepository.CreateNewUser(fullname, username, pass1, accountNum, gender, email);
                Response.Redirect("SignIn_Page.aspx");
            }


        }
    }
}