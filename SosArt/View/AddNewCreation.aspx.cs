using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SosArt.Repository;


namespace SosArt.View
{
    public partial class AddNewCreation : System.Web.UI.Page
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

        protected void BrowseBtn_Click(object sender, EventArgs e)
        {
            MyImage.ImageUrl = "~/Images/"+ ImageUpload.FileName.ToString();
        }

        protected void AddNewPictureBtn_Click(object sender, EventArgs e)
        {
            int price = Int32.Parse(PriceTxt.Text);
            String title = TitleTxt.Text;
            String url = "~/Images/" + ImageUpload.FileName.ToString();
            
            byte[] img = ImageUpload.FileBytes;

            if (price%1000 == 0 && title.Length > 3)
            {
                ImagesRepository.AddNewImage(title, price, img, url, UserRepository.getUserID(Session["Email"].ToString()));
                Response.Redirect("Library.aspx");
            }

            

        }
    }
}