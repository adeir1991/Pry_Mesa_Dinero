using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace md.Entidades
{
    public class BeanResultado
    {
        public DataTable dtResultado { get; set; }
        public Boolean blnResultado { get; set; }
        public String strMensaje { get; set; }
        public Object outputParam { get; set; }
    }
}
