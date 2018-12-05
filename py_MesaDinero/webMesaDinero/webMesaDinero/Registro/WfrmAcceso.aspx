<%@ Page Title="" Language="C#" MasterPageFile="~/Registro/WfrmMasterPageRegistro.Master" AutoEventWireup="true" CodeBehind="WfrmAcceso.aspx.cs" Inherits="webMesaDinero.Registro.WfrmAcceso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>     
    <script src="../js/JsRegistroCliente.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <sign-in>
        <div class="form-base-container-content">
            <div class="dark-logo"></div>
                <div class="exit-btn"></div>
                    <div class="form-content">
                        <div class="form-base-title">Ingresa a tu cuenta</div>
                        <div class="form">
			                <base-input type="text" placeholder="Correo">
                                <div class="base-input-content">
                                    <input id="idEmail" placeholder="Correo" type="text">
                                </div>
			                </base-input>
			                <base-input type="password" placeholder="Contraseña">
                                <div class="base-input-content">
                                    <input id="idClave" placeholder="Contraseña"  type="password">
                                    <span class="view"></span>
                                </div>
			                </base-input>
			                <div id="to-recovery" class="middle-text link">Recuperar Contraseña</div>
			                <div id="to-login" class="base-btn">
				                <span class="base-btn-icon"></span>
				                <span class="base-btn-text">Iniciar Sesión</span>
			                </div>
			                <div class="form-bottom-text">
				                <span class="question">No tienes cuenta aún?</span>
				                <span id="to-sign-up" class="link"><a href="WfrmRegistro.aspx">Crea una aquí</a></span>
			                </div>
		                </div>
                    </div>
        </div>
    </sign-in>
</asp:Content>
