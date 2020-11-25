using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SosArt.Repository;

namespace SosArt.View
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usernamelbl.Text = UserRepository.getUserName(Session["Email"].ToString());
            FullNamelbl.Text = UserRepository.getFullName(Session["Email"].ToString());
            Emaillbl.Text = Session["Email"].ToString();
            Genderlbl.Text = UserRepository.getGender(Session["Email"].ToString());
            AccountNumlbl.Text = UserRepository.getAccountNum(Session["Email"].ToString());
            RoleNamelbl.Text = UserRepository.getRoleNameFromRoleID(Session["Email"].ToString());
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

        protected void ChangeFullNameBtn_Click(object sender, EventArgs e)
        {

        }

        protected void ChangeUsernameBtn_Click(object sender, EventArgs e)
        {

        }

        protected void ChangeEmailBtn_Click(object sender, EventArgs e)
        {

        }

        protected void ChangeGenderBtn_Click(object sender, EventArgs e)
        {

        }

        protected void ChangeAccountNumBtn_Click(object sender, EventArgs e)
        {

        }

        protected void ChangePassBtn_Click(object sender, EventArgs e)
        {

        }
    }
}