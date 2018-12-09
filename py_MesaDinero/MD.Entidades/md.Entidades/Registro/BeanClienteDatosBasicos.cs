using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace md.Entidades.Registro
{
    public class BeanClienteDatosBasicos
    {
        public string vOption { get; set; }
        public string vNombre { get; set; }
        public string vApellido { get; set; }
        public string vCorreo { get; set; }
        public string vCelular { get; set; }
        public string vTipoCliente { get; set; }
        public string vClaveAcceso { get; set; }
        public string vIdCliente { get; set; }
        public DateTime vFechaRegistro { get; set; }

        //Clave SMS
        public string vClaveAccesoSMS { get; set; }

        //--Datos Completos
        public string vTipoDocumento { get; set; }
        public string vNroDocumento { get; set; }
        public string vApellidoMat { get; set; }
        public DateTime dFechaNacimiento { get; set; }
        public string vPais { get; set; }
        public string vDepartamento { get; set; }
        public string vProvincia { get; set; }
        public string vDistrito { get; set; }
        public string vDireccion { get; set; }
        public string vSituacionLaboral { get; set; }
        public string vPersonaPolitica { get; set; }
        public string vOrigenFondos { get; set; }
        public string vEntidadPublica { get; set; }
        public string vCargo { get; set; }
       
       

    }
}
