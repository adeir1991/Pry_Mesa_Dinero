using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.IO;


namespace webMesaDinero.Registro.Handler
{
    /// <summary>
    /// Handler del Proceso de Registro de Cliente
    /// </summary>
    public class HandlerProcesoRegistro : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string strJson = new StreamReader(context.Request.InputStream).ReadToEnd();
            userInfo objUsr = Deserialize<userInfo>(strJson);
            if (objUsr != null)
            {
                string fullName = objUsr.vNombre + " " + objUsr.vApellido;
                string age = objUsr.vCorreo;
                string qua = objUsr.vCelular;
                context.Response.Write(string.Format("Name :{0} , Age={1}, Qualification={2}", fullName, age, qua));
            }
            else
            {
                context.Response.Write("No Data");
            }

        }
        public class userInfo
        {
            public string vNombre { get; set; }
            public string vApellido { get; set; }
            public string vCorreo { get; set; }
            public string vCelular { get; set; }

        }
        public T Deserialize<T>(string context)
        {
            string jsonData = context;
            var obj = (T)new JavaScriptSerializer().Deserialize<T>(jsonData);
            return obj;
        }
        public string func_GrabarCliente()
        {

            return "";
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