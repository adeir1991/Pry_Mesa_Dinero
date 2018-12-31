using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using md.Entidades.Registro;
using md.Entidades;
using md.DAO;
using md.DAO.Registro;

namespace md.Negocio.Registro
{
    public class NegClienteDatosBasicos
    {
        BeanResultado _BeanResultado = null;
        DaoClienteDatosBasicos _DaoClienteDatosBasicos = null;
        
        public BeanResultado RegistrarClienteDatosBasicos(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoClienteDatosBasicos = new DaoClienteDatosBasicos();
            _BeanResultado = _DaoClienteDatosBasicos.RegistrarClienteDatosBasicos(_BeanClienteDatosBasicos);
            return _BeanResultado;
        }
        public BeanResultado ValidarAccesoCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoClienteDatosBasicos = new DaoClienteDatosBasicos();
            _BeanResultado = _DaoClienteDatosBasicos.ValidarAccesoCliente(_BeanClienteDatosBasicos);
            return _BeanResultado;
        }
        public BeanResultado ValidarClaveSMS(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoClienteDatosBasicos = new DaoClienteDatosBasicos();
            _BeanResultado = _DaoClienteDatosBasicos.ValidarClaveSMS(_BeanClienteDatosBasicos);
            return _BeanResultado;
        }

        public BeanResultado ActualizarDatosCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoClienteDatosBasicos = new DaoClienteDatosBasicos();
            _BeanResultado = _DaoClienteDatosBasicos.ActualizarDatosCliente(_BeanClienteDatosBasicos);
            return _BeanResultado;
        }
        public BeanResultado CargaDatosBasicosCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoClienteDatosBasicos = new DaoClienteDatosBasicos();
            _BeanResultado = _DaoClienteDatosBasicos.CargaDatosBasicosCliente(_BeanClienteDatosBasicos);
            return _BeanResultado;
        }
    }
}
