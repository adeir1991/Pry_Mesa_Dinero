<%@ Page Title="" Language="C#" MasterPageFile="~/Registro/WfrmMasterPageRegistro.Master" AutoEventWireup="true" CodeBehind="WfrmRegistro.aspx.cs" Inherits="webMesaDinero.Registro.WfrmRegistro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>  
    <script src="../js/JsAjaxProcess.js"></script>
    <script src="../js/JsRegistroCliente.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <login-form>
        <div class="form-base-container-content">
            <div class="dark-logo"></div>
            <div class="exit-btn"></div>
                <div class="form-content">
                    <div class="form-base-title">Bienvenido a La Mesa de Dinero</div>
                    <div class="parragraph-container">
			            <p>Ingresa tus datos y recibir&aacute;s un SMS de validaci&oacute;n</p>
			            <p>para continuar con tu registro</p>
			        </div>
                    <div class="form">
                        <input type="text" name="idPersona" id="idPersona" value="P" style="display: none;" />
			            <div class="login-selection">
				            <div id="login-people" class="people active">
					            <span>Persona</span>
				            </div>
				            <div id="login-company" class="company inactive">
					            <span>Empresa</span>
				            </div>
			            </div>
			            <base-input id="sing-up-name" type="text" placeholder="Nombre"><div class="base-input-content"><input value="" placeholder="Nombre" id="Nombre" type="text"></div></base-input>
			            <base-input id="sign-up-lastname" type="text" placeholder="Apellido"><div class="base-input-content"><input value="" placeholder="Apellido" id="Apellido" type="text"></div></base-input>
			            <base-input id="sign-up-email" type="text" placeholder="Correo"><div class="base-input-content"><input value="" placeholder="Correo" id="Correo" type="text"></div></base-input>
			            <base-input id="sign-up-phone" type="text" placeholder="Celular"><div class="base-input-content"><input value="" placeholder="Celular" id="Celular" type="text"></div></base-input>
			            <div id="conditions" class="middle-text conditions">
				            <div class="conditions-icon"></div>
				            <div class="conditions-text">Acepto los términos del contrato</div>
			            </div>
			            <div id="to-password" class="base-btn">
				            <span class="base-btn-icon"></span>
				            <span class="base-btn-text">Crear mi cuenta</span>
			            </div>
			            <div class="form-bottom-text">
				            <span class="question">Ya estás Registrado?</span>
				            <span id="to-sign-in" class="link"><a href="WfrmAcceso.aspx">Entra aquí</a></span>
			            </div>
		            </div>
                </div>
        </div>
    </login-form>
</asp:Content>
