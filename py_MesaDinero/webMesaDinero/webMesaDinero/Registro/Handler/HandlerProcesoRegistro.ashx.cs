using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.IO;
using md.Entidades;
using md.Entidades.Registro;


namespace webMesaDinero.Registro.Handler
{
    /// <summary>
    /// Handler del Proceso de Registro de Cliente
    /// </summary>
    
    public class HandlerProcesoRegistro : IHttpHandler
    {

        BeanClienteDatosBasicos _BeanClienteDatosBasicos = null;
        BeanResultado  _BeanResultado = null;
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            _BeanClienteDatosBasicos = new BeanClienteDatosBasicos();
            string strJson = new StreamReader(context.Request.InputStream).ReadToEnd();
            _BeanClienteDatosBasicos = Deserialize<BeanClienteDatosBasicos>(strJson);
            if (_BeanClienteDatosBasicos != null)
            {
                string fullName = _BeanClienteDatosBasicos.strNombre + " " + _BeanClienteDatosBasicos.strApellido;
                string age = _BeanClienteDatosBasicos.strCorreo;
                string qua = _BeanClienteDatosBasicos.strCelular;
                context.Response.Write(string.Format("Name :{0} , Age={1}, Qualification={2}", fullName, age, qua));
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

        public BeanResultado RegistrarClienteDatosBasicos(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _BeanResultado = new BeanResultado();

            return _BeanResultado;

        }
    
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

    }
}