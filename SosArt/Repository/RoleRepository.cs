using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SosArt.Model;

namespace SosArt.Repository
{
    public class RoleRepository
    {
        static SosArtDatabaseEntities db = new SosArtDatabaseEntities();

        public static String GetRoleName (int RoleID)
        {
            return db.Roles.Where(Role => Role.RolesID == RoleID).Select(Role => Role.RolesName).FirstOrDefault();
        }
    }
}