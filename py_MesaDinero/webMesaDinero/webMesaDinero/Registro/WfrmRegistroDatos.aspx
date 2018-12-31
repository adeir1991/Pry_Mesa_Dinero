<%@ Page Title="" Language="C#" MasterPageFile="~/Registro/WfrmMasterPageRegistro.Master" AutoEventWireup="true" CodeBehind="WfrmRegistroDatos.aspx.cs" Inherits="webMesaDinero.Registro.WfrmRegistroDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Registración - Base -->
	<link rel="stylesheet" type="text/css" href="../css/components/special-counter/special-counter.css" />
	<link rel="stylesheet" type="text/css" href="../css/registration/register-container/layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/registration/person-registration/layout.css" />
	<!-- Containers -->
	<link rel="stylesheet" type="text/css" href="../css/containers/auction_confirmation_box_layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/containers/basic_container_layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/containers/complex_container_layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/containers/dashboard_base_layout.css" />
	<!-- Subasta -->
	<link rel="stylesheet" type="text/css" href="../css/register-auction-container/layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/register-auction-container/custom-checkbox.css" />
	<link rel="stylesheet" type="text/css" href="../css/auction/auction-box/layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/register-auction-container/horizontal-progress-bar.css" />
	<link rel="stylesheet" type="text/css" href="../css/register-auction-container/fancy-input.css" />
    <!-- JS -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/JsRegistroCliente.js"></script>
    <script src="../js/fancy_input_effect.js"></script>
	<script src="../js/custom_checkbox_effect.js"></script>
    <script src="../js/close_popup.js"></script>
    <script src="../js/WfrmRegistroDatos.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <person-registration><div class="register-auction-content"><div class="register-auction-header">
			<div class="cmpnt-1">
				<div></div>
			</div>
				<horizontal-progress-bar class="cmpnt-2"><div class="horizontal-progress-bar-content" style="grid-template-columns: 1fr 1fr 1fr;">
			<div class="active">
				<div class="little-circle"></div>
				<div class="top-border top-left-border"></div>
				<div class="top-border top-right-border"></div>
				<div class="status-text">Datos Personales</div>
			</div>
			
			<div>
				<div class="little-circle"></div>
				<div class="top-border top-left-border"></div>
				<div class="top-border top-right-border"></div>
				<div class="status-text">Configura tus cuentas de Banco</div>
			</div>
			
			<div>
				<div class="little-circle"></div>
				<div class="top-border top-left-border"></div>
				<div class="top-border top-right-border"></div>
				<div class="status-text">Verificación</div>
			</div>
			</div></horizontal-progress-bar>
				<div class="cmpnt-3">UU</div>
			<div class="cmpnt-4"></div>
		</div><div class="register-auction-body register-container">
			<div class="main-header-container">
				<div class="main-title">Ingresa tus datos personales</div>
				<div class="main-parragraph">
					Este proceso es rápido y por única vez, para cumplir con la normativa de concocer
					al cliente regulado por la Unidad de Inteligencia Financiera UIF - SBS.
				</div>
			</div>
			<div class="register-container-block block-1-1">
				<select id="person-reg-doctype" class="custom-select">
					<option class="custom-option">CE</option>
					<option class="custom-option">DNI</option>
					<option class="not-an-option" value="" disabled="" selected="">Tipo de Documento</option>
				</select>
				<fancy-input id="person-reg-document" placeholder="N° de Documento"><div class="fancy-input-content"><div class="fake-placeholder">N° de Documento</div>
                    <input id="NroDocumento" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-name" placeholder="Nombres"><div class="fancy-input-content"><div class="fake-placeholder">Nombres</div>
                    <input id="Nombres" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-lastname" placeholder="Apellido Paterno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Paterno</div>
                    <input id="ApellidoPat" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-lastname2" placeholder="Apellido Materno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Materno</div>
                    <input id="ApellidoMat" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-birthdate" placeholder="Fecha de Nacimiento (DD/MM/AA)"><div class="fancy-input-content"><div class="fake-placeholder">Fecha de Nacimiento (DD/MM/AA)</div>
                    <input id="FechaNacimiento" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-email" placeholder="E-mail"><div class="fancy-input-content"><div class="fake-placeholder">E-mail</div>
                    <input id="Email" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-phone" placeholder="Teléfono Celular"><div class="fancy-input-content"><div class="fake-placeholder">Teléfono Celular</div>
                    <input id="TelefonoCelular" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-country" placeholder="Nacionalidad"><div class="fancy-input-content"><div class="fake-placeholder">Pa&iacute;s</div>
                    <input id="Pais" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-state" placeholder="Departamento"><div class="fancy-input-content"><div class="fake-placeholder">Departamento</div>
                    <input id="Departamento" value="" type="text"></div></fancy-input>
				<fancy-input id="person-pro-prov" placeholder="Provincia"><div class="fancy-input-content"><div class="fake-placeholder">Provincia</div>
                    <input id="Provincia" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-district" placeholder="Distrito"><div class="fancy-input-content"><div class="fake-placeholder">Distrito</div>
                    <input id="Distrito" value="" type="text"></div></fancy-input>
				<fancy-input id="person-reg-address" placeholder="Dirección"><div class="fancy-input-content"><div class="fake-placeholder">Dirección</div>
                    <input id="Direccion" value="" type="text"></div></fancy-input>                
			</div>
			<div class="block-1-2">
				<div class="block-1-2-1">
					<div class="sub-title">Situación Laboral:</div>
                    
					<custom-checkbox class="chx-1" >

                    <%--Situacion laboral Radio buttons--%>
                    <div class="radio">
                      <label><input type="radio"  name="SituacionLaboral" value="D" checked>Dependiente</label>
                    </div>
                    <div class="radio">
                      <label><input type="radio" name="SituacionLaboral" value="I" >Independiente</label>
                    </div>

                        <div class="custom-checkbox-content inactive">			                
		                </div>
					</custom-checkbox>
					<div class="custom-checkbox-content inactive">
			<div class="custom-checkbox-icon"></div>
			
		</div></custom-checkbox>
					
				</div>
				<div class="block-1-2-2">
					<select class="custom-select" id="OrigenFondos">
						<option class="custom-option">Fondos Propios</option>
						<option class="custom-option">Venta de Activos</option>
						<option class="custom-option">Resultados Acumulados</option>
						<option class="custom-option">Financiamiento</option>
						<option class="custom-option">Intereses y Rendimiento</option>
						<option class="custom-option">Dividendo y Participaciones</option>
						<option class="not-an-option" value="" disabled="" selected="">Origen de fondos</option>
					</select>
				</div>
				<div class="block-1-2-3">
					<div class="sub-title">Es una persona politicamente expuesta:</div>
					<div class="checkboxes">						
						 <div class="radio">
                          <label><input type="radio"  name="PersonaPolitica" value="SI" checked>SI</label>
                        </div>
                        <div class="radio">
                          <label><input type="radio" name="PersonaPolitica" value="NO" >NO</label>
                        </div>
					</div>
					<fancy-input class="fi-1" placeholder="Entidad Pública"><div class="fancy-input-content"><div class="fake-placeholder">Entidad Pública</div><input id="EntidadPublica" value="" type="text"></div></fancy-input>
					<fancy-input class="fi-2" placeholder="Cargo"><div class="fancy-input-content"><div class="fake-placeholder">Cargo</div><input id="Cargo" value="" type="text"></div></fancy-input>
					<br>
					<div id="save-person" class="btn regular"><span class="btn-text">Guardar</span></div>

				</div>
			</div>
		</div></div></person-registration>
			<div id="ibmovx-is-installed"></div>
</asp:Content>
