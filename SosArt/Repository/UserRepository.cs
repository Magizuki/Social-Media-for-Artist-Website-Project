using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SosArt.Model;
using SosArt.Factory;

namespace SosArt.Repository
{
    public class UserRepository
    {
        static SosArtDatabaseEntities db = new SosArtDatabaseEntities();

        public static bool cekEmail (String email)
        {
            User user = new User();
            user = (from x in db.Users where x.Email == email select x).FirstOrDefault();

            if(user == null)
            {
                return true;
            }

            return false;
        }

        public static String getUserName (String email)
        {
            return db.Users.Where(User => User.Email == email).Select(User => User.UserName).FirstOrDefault();
        }

        public static String getFullName (String email)
        {
            return db.Users.Where(User => User.Email == email).Select(User => User.FullName).FirstOrDefault();
        }

        public static String getGender(String email)
        {
            return db.Users.Where(User => User.Email == email).Select(User => User.Gender).FirstOrDefault();
        }

        public static String getAccountNum(String email)
        {
            return db.Users.Where(User => User.Email == email).Select(User => User.AccountNumber).FirstOrDefault();
        }

        public static String getRoleNameFromRoleID(String email)
        {
            int id = getRoleID(email);
            return RoleRepository.GetRoleName(id);
        }
        

        public static int getRoleID(String email)
        {
            return db.Users.Where(User => User.Email == email).Select(User => User.RolesID).FirstOrDefault();
        }

        public static int getUserID(String email)
        {
            return db.Users.Where(User => User.Email == email).Select(User => User.UserID).FirstOrDefault();
        }

        public static bool cekEmailPass (String email , String pass)
        {
            User user = new User();
            user = (from x in db.Users where x.Email == email && x.Pass == pass select x).FirstOrDefault();

            if (user == null)
            {
                return true;
            }

            return false;

        }

        public static void CreateNewUser(String fullname, String username, String pass, String AccountNum, String gender,  String Email)
        {

            User user = UserFactory.CreateNewUser(fullname, username, pass, AccountNum, gender,  Email);
            db.Users.Add(user);
            db.SaveChanges();

        }



    }
}