using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SosArt.Model;

namespace SosArt.Factory
{
    public class ImagesFactory
    {

        public static Image AddNewImages (String title, int price, byte[] picture, String url, int UserID)
        {
            Image img = new Image();
            img.ImageTitle = title;
            img.Price = price;
            img.ImageURL = url;
            img.UserID = UserID;
            img.Picture = picture;

            return img;

        }
    }
}