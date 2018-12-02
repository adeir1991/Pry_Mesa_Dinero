using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using md.Entidades;
using md.Entidades.Registro;
namespace md.Negocio
{
    public class DaoClienteDatosBasicos
    {
        BeanResultado _BeanResultado = null;
        public BeanResultado RegistrarClienteDatosBasicos(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _BeanResultado = new BeanResultado();

            return _BeanResultado;
        }
    }
}
