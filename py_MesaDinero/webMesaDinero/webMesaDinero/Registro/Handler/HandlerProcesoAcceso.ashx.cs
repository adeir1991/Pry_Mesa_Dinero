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
    /// <summary>
    /// Descripción breve de HandlerProcesoAcceso
    /// </summary>
    public class HandlerProcesoAcceso : IHttpHandler
    {
        BeanClienteDatosBasicos _BeanClienteDatosBasicos = null;
        BeanResultado _BeanResultado = null;
        NegClienteDatosBasicos _NegClienteDatosBasicos = null;
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            _BeanClienteDatosBasicos = new BeanClienteDatosBasicos();
            string strJson = new StreamReader(context.Request.InputStream).ReadToEnd();
            _BeanClienteDatosBasicos = Deserialize<BeanClienteDatosBasicos>(strJson);
            if (_BeanClienteDatosBasicos != null)
            {
                //string fullName = _BeanClienteDatosBasicos.vNombre + " " + _BeanClienteDatosBasicos.vApellido;
                //string age = _BeanClienteDatosBasicos.vCorreo;
                //string qua = _BeanClienteDatosBasicos.vCorreo;
                _BeanResultado = ValidarAccesoCliente(_BeanClienteDatosBasicos);
                context.Response.ContentType = "text/plain";
                context.Response.Write(new JavaScriptSerializer().Serialize(_BeanResultado));
            }
            else
            {
                context.Response.Write("No Data");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        public T Deserialize<T>(string context)
        {
            string jsonData = context;
            var obj = (T)new JavaScriptSerializer().Deserialize<T>(jsonData);
            return obj;
        }
        public BeanResultado ValidarAccesoCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _BeanResultado = new BeanResultado();
            _NegClienteDatosBasicos = new NegClienteDatosBasicos();
            _BeanResultado = _NegClienteDatosBasicos.ValidarAccesoCliente(_BeanClienteDatosBasicos);
            return _BeanResultado;
        }

    }
}