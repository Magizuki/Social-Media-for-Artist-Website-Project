using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SosArt.Model;
using SosArt.Factory;

namespace SosArt.Repository
{
    public class ImagesRepository
    {
        static SosArtDatabaseEntities db = new SosArtDatabaseEntities();

        public static void AddNewImage (String title, int price, byte[] picture, String url, int UserID)
        {
            Image img = ImagesFactory.AddNewImages(title, price, picture, url, UserID);
            db.Images.Add(img);
            db.SaveChanges();
        }

        public static object ShowAllImages ()
        {
            var img =  (from x in db.Images select x).ToList();

            return img;
        }

        public static object ShowImages( int UserID )
        {
            var img = (from x in db.Images where x.UserID == UserID select x).ToList();

            return img;
        }

    }
}