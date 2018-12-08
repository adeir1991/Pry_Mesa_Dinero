<%@ Page Title="" Language="C#" MasterPageFile="~/Registro/WfrmMasterPageRegistro.Master" AutoEventWireup="true" CodeBehind="WfrmConfirmarSMS.aspx.cs" Inherits="webMesaDinero.Registro.WfrmConfirmarSMS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/JsRegistroCliente.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <create-password>
            <div class="form-base-container-content">
                <div class="dark-logo"></div>
                <div class="exit-btn"></div>
                <div class="form-content">
                    <div class="form-base-title">Ingresa tu clave SMS</div>
                    <div class="parragraph-container">
			            <p>Ingresa el SMS y contin&uacute;a con tu registro</p>
			        </div>
                    <div class="form">
			            <base-input type="text" placeholder="Ingresar tu clave SMS">
                            <div class="base-input-content">
                                <input placeholder="Ingresa tu Clave SMS" type="text">
                           </div>
			            </base-input>
			            <div class="base-btn" id="DivBtnSMS">
				            <span class="base-btn-text">Enviar</span>
			            </div>
		            </div>
                </div>
            </div>
        </create-password>
</asp:Content>
