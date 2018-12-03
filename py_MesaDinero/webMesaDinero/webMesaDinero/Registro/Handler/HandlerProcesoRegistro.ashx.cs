using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.IO;
using md.Entidades;
using md.Entidades.Registro;
using md.Negocio.Registro;

namespace webMesaDinero.Registro.Handler
{
     public class HandlerProcesoRegistro : IHttpHandler
    {
        BeanClienteDatosBasicos _BeanClienteDatosBasicos = null;
        BeanResultado  _BeanResultado = null;
        NegClienteDatosBasicos _NegClienteDatosBasicos = null;
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            _BeanClienteDatosBasicos = new BeanClienteDatosBasicos();
            string strJson = new StreamReader(context.Request.InputStream).ReadToEnd();
            _BeanClienteDatosBasicos = Deserialize<BeanClienteDatosBasicos>(strJson);
            if (_BeanClienteDatosBasicos != null)
            {
                string fullName = _BeanClienteDatosBasicos.vNombre + " " + _BeanClienteDatosBasicos.vApellido;
                string age = _BeanClienteDatosBasicos.vCorreo;
                string qua = _BeanClienteDatosBasicos.vCorreo;
                _BeanResultado = RegistrarClienteDatosBasicos(_BeanClienteDatosBasicos);                
                context.Response.ContentType ="text/plain";               
                context.Response.Write(new JavaScriptSerializer().Serialize(_BeanResultado));
            }
            else
            {
                context.Response.Write("No Data");
            }

        }
    
        public T Deserialize<T>(string context)
        {
            string jsonData = context;
            var obj = (T)new JavaScriptSerializer().Deserialize<T>(jsonData);
            return obj;
        }
    
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        
        public BeanResultado RegistrarClienteDatosBasicos(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _BeanResultado = new BeanResultado();
            _NegClienteDatosBasicos = new NegClienteDatosBasicos();
            _BeanResultado = _NegClienteDatosBasicos.RegistrarClienteDatosBasicos(_BeanClienteDatosBasicos);
            return _BeanResultado;
        }

    }
}