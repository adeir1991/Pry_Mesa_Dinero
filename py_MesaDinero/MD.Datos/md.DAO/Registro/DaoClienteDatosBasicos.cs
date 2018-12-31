using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using md.Entidades;
using md.Entidades.Registro;
using System.Data;
using System.Data.SqlClient;

namespace md.DAO.Registro
{
    public class DaoClienteDatosBasicos
    {
        BeanResultado _BeanResultado = null;
        DaoConexion _DaoConexion = null;  
        public BeanResultado RegistrarClienteDatosBasicos(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoConexion = new DaoConexion();
            string conx = _DaoConexion.GetConexion;
            using (SqlConnection conexion = new SqlConnection(conx))
            {
                _BeanResultado = new BeanResultado();
                using (SqlCommand comando = new SqlCommand("Usp_RegistroClienteDatosBasicos", conexion))
                {
                    comando.CommandType = System.Data.CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@vTipoPersona", _BeanClienteDatosBasicos.vTipoCliente.Trim());
                    comando.Parameters.AddWithValue("@vNombre", _BeanClienteDatosBasicos.vNombre.Trim());
                    comando.Parameters.AddWithValue("@vApellidos", _BeanClienteDatosBasicos.vApellido.Trim());
                    comando.Parameters.AddWithValue("@vEmail", _BeanClienteDatosBasicos.vCorreo.Trim());
                    comando.Parameters.AddWithValue("@vCelular", _BeanClienteDatosBasicos.vCelular.Trim());
                    try
                    {
                        conexion.Open();
                        comando.ExecuteNonQuery();
                        conexion.Close();
                        comando.Dispose();
                        _BeanResultado.blnResultado = true;
                        _BeanResultado.strMensaje = "La operación se realizó correctamente!";
                    }
                    catch (Exception ex)
                    {
                        _BeanResultado.blnResultado = false;
                        _BeanResultado.strMensaje = ex.ToString();
                    }
                }
            }           

            return _BeanResultado;
        }

        public BeanResultado ValidarAccesoCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoConexion = new DaoConexion();
            string conx = _DaoConexion.GetConexion;
            BeanClienteDatosBasicos _BeanClienteDatosBasic = null;
            using (SqlConnection conexion = new SqlConnection(conx))
            {
                _BeanResultado = new BeanResultado();
                using (SqlCommand comando = new SqlCommand("Usp_ValidarAccesoCliente", conexion))
                {
                    _BeanClienteDatosBasic = new BeanClienteDatosBasicos();
                    comando.CommandType = System.Data.CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@vEmail", _BeanClienteDatosBasicos.vCorreo.Trim());
                    comando.Parameters.AddWithValue("@vClave", _BeanClienteDatosBasicos.vClaveAcceso.Trim());                    
                    try
                    {
                        conexion.Open();
                        SqlDataReader reader = comando.ExecuteReader();
                        Int32 iEstado = 0;
                        while (reader.Read())
                        {
                            _BeanClienteDatosBasic.vIdCliente = reader["iIdCliente"].ToString();
                            iEstado = Convert.ToInt32(reader["iEstadoCliente"]);
                        }
                        if (iEstado == 1)
                        {
                            _BeanResultado.blnResultado = false;
                            _BeanResultado.strMensaje = "El Cliente se encuentra desactivado. Consulte con el administrador del sistema.";
                        }
                        else
                        {
                            ActualizarNivelRegistroCliente(_BeanClienteDatosBasic);//agreagr codigo de verificacion
                            _BeanResultado.blnResultado = true;
                            _BeanResultado.strMensaje = "La operación se realizó correctamente!";
                        }
                        
                        conexion.Close();
                        comando.Dispose();
                                            }
                    catch (Exception ex)
                    {
                        _BeanResultado.blnResultado = false;
                        _BeanResultado.strMensaje = ex.ToString();
                    }
                }
            }

            return _BeanResultado;
        }

        public BeanResultado ValidarClaveSMS(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoConexion = new DaoConexion();
            string conx = _DaoConexion.GetConexion;
            BeanClienteDatosBasicos _BeanClienteDatosBasic = null;
            using (SqlConnection conexion = new SqlConnection(conx))
            {
                _BeanResultado = new BeanResultado();
                using (SqlCommand comando = new SqlCommand("Usp_ValidarClaveSMS", conexion))
                {
                    _BeanClienteDatosBasic = new BeanClienteDatosBasicos();
                    comando.CommandType = System.Data.CommandType.StoredProcedure;
                    try
                    {
                        comando.Parameters.AddWithValue("@vClaveSMS", _BeanClienteDatosBasicos.vClaveAccesoSMS.Trim());                   
                        conexion.Open();
                        SqlDataReader reader = comando.ExecuteReader();
                        Int32 iEstado = 0;
                        while (reader.Read())
                        {
                            _BeanClienteDatosBasic.vIdCliente = reader["iIdCliente"].ToString();
                            _BeanClienteDatosBasic.vTipoCliente = reader["vTipoPersona"].ToString(); 
                            iEstado = Convert.ToInt32(reader["iEstadoCliente"]);
                        }
                        if (iEstado == 1)
                        {
                            _BeanResultado.blnResultado = false;
                            _BeanResultado.strMensaje = "El Cliente se encuentra desactivado. Consulte con el administrador del sistema.";
                        }
                        else
                        {                           
                           _BeanResultado = ActualizarNivelRegistroCliente(_BeanClienteDatosBasic);
                        }

                        conexion.Close();
                        comando.Dispose();
                    }
                    catch (Exception ex)
                    {
                        _BeanResultado.blnResultado = false;
                        _BeanResultado.strMensaje = ex.ToString();
                    }
                }
            }

            return _BeanResultado;
        }

        public BeanResultado ActualizarNivelRegistroCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoConexion = new DaoConexion();
            string conx = _DaoConexion.GetConexion;
            using (SqlConnection conexion = new SqlConnection(conx))
            {
                _BeanResultado = new BeanResultado();
                using (SqlCommand comando = new SqlCommand("Usp_ActualizarNivelRegistroCliente", conexion))
                {
                    comando.CommandType = System.Data.CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@iIdCliente", _BeanClienteDatosBasicos.vIdCliente.Trim());                    
                    try
                    {
                        conexion.Open();
                        SqlDataReader reader = comando.ExecuteReader();
                        Int32 iNivelRegistro = 0;
                        string strMensaje = "";
                        while (reader.Read())
                        {
                            strMensaje = reader["strMensaje"].ToString();
                            iNivelRegistro = Convert.ToInt32(reader["iNivelRegistro"]);
                        }

                        if (iNivelRegistro == 1)
                        {
                            _BeanResultado.blnResultado = true;
                            _BeanResultado.strMensaje = strMensaje;
                            _BeanResultado.strIdCliente = _BeanClienteDatosBasicos.vIdCliente.Trim();
                            _BeanResultado.strTipoPersona = _BeanClienteDatosBasicos.vTipoCliente.Trim();  
                        }
                        else
                        {
                            _BeanResultado.blnResultado = false;
                            _BeanResultado.strMensaje = strMensaje;
                        }
                        
                        conexion.Close();
                        comando.Dispose();
                    }
                    catch (Exception ex)
                    {
                        _BeanResultado.blnResultado = false;
                        _BeanResultado.strMensaje = ex.ToString();
                    }
                }
            }

            return _BeanResultado;
        }

        public BeanResultado ActualizarDatosCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoConexion = new DaoConexion();
            string conx = _DaoConexion.GetConexion;
            BeanClienteDatosBasicos _BeanClienteDatosBasic = null;
            using (SqlConnection conexion = new SqlConnection(conx))
            {
                _BeanResultado = new BeanResultado();
                using (SqlCommand comando = new SqlCommand("Usp_ActualizarDatosCliente", conexion))
                {
                    try
                    {
                        _BeanClienteDatosBasic = new BeanClienteDatosBasicos();
                        comando.CommandType = System.Data.CommandType.StoredProcedure;
                        comando.Parameters.AddWithValue("@iIdCliente", _BeanClienteDatosBasicos.vIdCliente.Trim());
                        comando.Parameters.AddWithValue("@vNombre", _BeanClienteDatosBasicos.vNombre.Trim());
                        comando.Parameters.AddWithValue("@vApellido", _BeanClienteDatosBasicos.vApellido.Trim());
                        comando.Parameters.AddWithValue("@vEmail", _BeanClienteDatosBasicos.vCorreo.Trim());
                        comando.Parameters.AddWithValue("@vCelular", _BeanClienteDatosBasicos.vCelular.Trim());
                        comando.Parameters.AddWithValue("@vTipoPersona", _BeanClienteDatosBasicos.vTipoCliente.Trim());
                        comando.Parameters.AddWithValue("@vTipoDocumento", _BeanClienteDatosBasicos.vTipoDocumento.Trim());
                        comando.Parameters.AddWithValue("@vNroDocumento", _BeanClienteDatosBasicos.vNroDocumento.Trim());
                        comando.Parameters.AddWithValue("@vApellidoMat", _BeanClienteDatosBasicos.vApellidoMat.Trim());
                        comando.Parameters.AddWithValue("@dFechaNacimiento", _BeanClienteDatosBasicos.dFechaNacimiento);
                        comando.Parameters.AddWithValue("@vPais", _BeanClienteDatosBasicos.vPais.Trim());
                        comando.Parameters.AddWithValue("@vDepartamento", _BeanClienteDatosBasicos.vDepartamento.Trim());
                        comando.Parameters.AddWithValue("@vProvincia", _BeanClienteDatosBasicos.vProvincia.Trim());
                        comando.Parameters.AddWithValue("@vDistrito", _BeanClienteDatosBasicos.vDistrito.Trim());
                        comando.Parameters.AddWithValue("@vDireccion", _BeanClienteDatosBasicos.vDireccion.Trim());
                        comando.Parameters.AddWithValue("@vSituacionLaboral", _BeanClienteDatosBasicos.vSituacionLaboral.Trim());
                        comando.Parameters.AddWithValue("@vPersonaPolitica", _BeanClienteDatosBasicos.vPersonaPolitica.Trim());
                        comando.Parameters.AddWithValue("@vOrigenFondos", _BeanClienteDatosBasicos.vOrigenFondos.Trim());
                        comando.Parameters.AddWithValue("@vEntidadPublica", _BeanClienteDatosBasicos.vEntidadPublica.Trim());
                        comando.Parameters.AddWithValue("@vCargo", _BeanClienteDatosBasicos.vCargo.Trim());
                   
                        conexion.Open();
                        SqlDataReader reader = comando.ExecuteReader();                        
                        while (reader.Read())
                        {
                            _BeanResultado.blnResultado = true;
                            _BeanResultado.strMensaje = reader["strMensaje"].ToString();   
                        }
                        
                        conexion.Close();
                        comando.Dispose();
                    }
                    catch (Exception ex)
                    {
                        _BeanResultado.blnResultado = false;
                        _BeanResultado.strMensaje = ex.ToString();
                    }
                }
            }

            return _BeanResultado;
        }

        public BeanResultado CargaDatosBasicosCliente(BeanClienteDatosBasicos _BeanClienteDatosBasicos)
        {
            _DaoConexion = new DaoConexion();
            string conx = _DaoConexion.GetConexion;
            BeanClienteDatosBasicos _BeanClienteDatosBasic = null;
            using (SqlConnection conexion = new SqlConnection(conx))
            {
                _BeanResultado = new BeanResultado();
                using (SqlCommand comando = new SqlCommand("Usp_ListarDatosBasicosCliente", conexion))
                {
                    try
                    {
                        _BeanClienteDatosBasic = new BeanClienteDatosBasicos();
                        comando.CommandType = System.Data.CommandType.StoredProcedure;
                        comando.Parameters.AddWithValue("@iIdCliente", _BeanClienteDatosBasicos.vIdCliente.Trim());
                        conexion.Open();
                        SqlDataReader reader = comando.ExecuteReader();
                        while (reader.Read())
                        {
                            _BeanResultado.blnResultado = true;
                            _BeanResultado.strIdCliente = _BeanClienteDatosBasicos.vIdCliente.Trim();
                            _BeanResultado.strTipoPersona = _BeanClienteDatosBasicos.vTipoCliente.Trim();  
                            //FALTA ACTUALIZACION DE DATOS PARA MOSTRAR LOS BASICOS 
                        }

                        conexion.Close();
                        comando.Dispose();
                    }
                    catch (Exception ex)
                    {
                        _BeanResultado.blnResultado = false;
                        _BeanResultado.strMensaje = ex.ToString();
                    }
                }
            }

            return _BeanResultado;
        }



        
    }
}
