using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace md.DAO.Registro
{
    class DaoConexion
    {
        public String GetConexion
        {
            get
            {
                String _value = ConfigurationManager.ConnectionStrings["BDFre"].ToString();
                return _value;
            }
        }

    }
}
