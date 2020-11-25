using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SosArt.Model;

namespace SosArt.Factory
{
    public class UserFactory
    {
        public static User CreateNewUser(String fullname, String username, String pass, String AccountNum, String gender,  String Email)
        {
            User user = new User();
            user.FullName = fullname;
            user.UserName = username;
            user.Pass = pass;
            user.AccountNumber = AccountNum;
            user.Gender = gender;
            user.RolesID = 2;
            user.Email = Email;

            return user;
        }

    }
}