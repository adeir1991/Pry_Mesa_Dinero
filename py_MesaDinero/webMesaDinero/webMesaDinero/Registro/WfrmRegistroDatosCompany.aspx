<%@ Page Title="" Language="C#" MasterPageFile="~/Registro/WfrmMasterPageRegistro.Master" AutoEventWireup="true" CodeBehind="WfrmRegistroDatosCompany.aspx.cs" Inherits="webMesaDinero.Registro.WfrmRegistroDatosCompany" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Registración - Base -->
	<link rel="stylesheet" type="text/css" href="../css/components/special-counter/special-counter.css" />
	<link rel="stylesheet" type="text/css" href="../css/components/round-button/round-button.css" />
	<link rel="stylesheet" type="text/css" href="../css/registration/register-container/layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/registration/person-registration/layout.css" />
	<link rel="stylesheet" type="text/css" href="../css/registration/company-registration/layout.css" />
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
	<link rel="stylesheet" type="text/css" href="../css/effects.css" />
	<script src="../js/fancy_input_effect.js"></script>
	<script src="../js/custom_checkbox_effect.js"></script>
	<script src="../js/close_popup.js"></script>
	<script src="../js/add_form_effect.js"></script>
    
    <!-- JS -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/JsRegistroCliente.js"></script>
    <script src="../js/WfrmRegistroDatos.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <company-registration>
        <div class="register-auction-content"><div class="register-auction-header">
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
				<div class="main-title">Empecemos por enviarnos tus datos de tu Empresa</div>
				<div class="main-parragraph">
					Este proceso es rápido y por única vez, para cumplir con la normativa de
					concocer al cliente regulado por la Unidad de Inteligencia Financiera UIF - SBS.
				</div>
			</div>
			
			
			<div class="company-block authorized-people">
				<div class="sub-title">Personas Autorizadas:</div>
				<div class="company-block-content">
					<div class="new-form">
						<select class="custom-select">
							<option class="custom-option">CE</option>
							<option class="custom-option">DNI</option>
							<option class="not-an-option" value="" disabled="" selected="">Tipo de Documento</option>
						</select>
						<fancy-input placeholder="N° de Documento"><div class="fancy-input-content"><div class="fake-placeholder">N° de Documento</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Nombres"><div class="fancy-input-content"><div class="fake-placeholder">Nombres</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Apellido Paterno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Paterno</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Apellido Materno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Materno</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Teléfono Celular"><div class="fancy-input-content"><div class="fake-placeholder">Teléfono Celular</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="E-mail"><div class="fancy-input-content"><div class="fake-placeholder">E-mail</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Cargo"><div class="fancy-input-content"><div class="fake-placeholder">Cargo</div><input value="" type="text"></div></fancy-input>
						<div class="remove-form"></div>
					</div>
				</div>
				<round-button class="btn-round add" text-content="Adicionar">
			<div class="round-button-content">
				<div class="btn-icon"></div>
				<div class="btn-text">Adicionar</div>
			</div>
		</round-button>
			</div>
			<div class="company-block">
				<div class="sub-title">Datos de la Empresa:</div>
				<div class="company-block-content">
					<div class="new-form">
						<fancy-input placeholder="Número RUC"><div class="fancy-input-content"><div class="fake-placeholder">Número RUC</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Nombre"><div class="fancy-input-content"><div class="fake-placeholder">Nombre</div><input value="" type="text"></div></fancy-input>
						<select class="custom-select">
							<option class="custom-option">Ingeniería</option>
							<option class="custom-option">Agricultura</option>
							<option class="not-an-option" value="" disabled="" selected="">Actividad Económica</option>
						</select>
						<select class="custom-select">
							<option class="custom-option">Fondos Propios</option>
							<option class="custom-option">Venta de Activos</option>
							<option class="custom-option">Resultados Acumulados</option>
							<option class="custom-option">Financiamiento</option>
							<option class="custom-option">Intereses y Rendimiento</option>
							<option class="custom-option">Dividendo y Participaciones</option>
							<option class="not-an-option" value="" disabled="" selected="">Origen de fondos</option>
						</select>
						<div class="remove-form"></div>
					</div>
				</div>
				<round-button class="btn-round document" text-content="Ad. Ficha RUC">
			<div class="round-button-content">
				<div class="btn-icon"></div>
				<div class="btn-text">Ad. Ficha RUC</div>
			</div>
		</round-button>
			</div>
			<div class="company-block">
				<div class="sub-title">Datos del Representante Legal:</div>
				<div class="company-block-content">
					<div>
						<select class="custom-select">
							<option class="custom-option">CE</option>
							<option class="custom-option">DNI</option>
							<option class="not-an-option" value="" disabled="" selected="">Tipo de Documento</option>
						</select>
						<fancy-input placeholder="N° de Documento"><div class="fancy-input-content"><div class="fake-placeholder">N° de Documento</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Nombres"><div class="fancy-input-content"><div class="fake-placeholder">Nombres</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Apellido Paterno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Paterno</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Apellido Materno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Materno</div><input value="" type="text"></div></fancy-input>
						<div class="btn-round"></div>
					</div>
				</div>
			</div>
			<div class="company-block">
				<div class="sub-title">Datos de los accionistas (+ del 25%):</div>
				<div class="company-block-content">
					<div class="new-form">
						<select class="custom-select">
							<option class="custom-option">CE</option>
							<option class="custom-option">DNI</option>
							<option class="not-an-option" value="" disabled="" selected="">Tipo de Documento</option>
						</select>
						<fancy-input placeholder="N° de Documento"><div class="fancy-input-content"><div class="fake-placeholder">N° de Documento</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Nombres"><div class="fancy-input-content"><div class="fake-placeholder">Nombres</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Apellido Paterno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Paterno</div><input value="" type="text"></div></fancy-input>
						<fancy-input placeholder="Apellido Materno"><div class="fancy-input-content"><div class="fake-placeholder">Apellido Materno</div><input value="" type="text"></div></fancy-input>
						<div class="remove-form"></div>
					</div>
				</div>
				<round-button class="btn-round add" text-content="Adicionar">
			<div class="round-button-content">
				<div class="btn-icon"></div>
				<div class="btn-text">Adicionar</div>
			</div>
		</round-button>
			</div>
			<div class="company-btn">
				<div class="btn regular">
					<span class="btn-text">Guardar</span>
				</div>
			</div>
		</div></div>

    </company-registration>

</asp:Content>

