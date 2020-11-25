using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SosArt.Repository;

namespace SosArt.View
{
    public partial class Library : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageList.DataSource = ImagesRepository.ShowImages(UserRepository.getUserID(Session["Email"].ToString()));
            ImageList.DataBind();
        }

        protected void AddNewCreationBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewCreation.aspx");
        }

        protected void ViewOpinionBtn_Click(object sender, EventArgs e)
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
    }
}