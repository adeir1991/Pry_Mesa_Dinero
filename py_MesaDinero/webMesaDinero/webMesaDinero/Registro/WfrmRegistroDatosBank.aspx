<%@ Page Title="" Language="C#" MasterPageFile="~/Registro/WfrmMasterPageRegistro.Master" AutoEventWireup="true" CodeBehind="WfrmRegistroDatosBank.aspx.cs" Inherits="webMesaDinero.Registro.WfrmRegistroDatosBank" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!-- General -->
		<link rel="stylesheet" type="text/css" href="../css/general.css" />
		<!-- Registración - Base -->		
		<link rel="stylesheet" type="text/css" href="../css/components/dashboard-container/bank-list/layout.css" />		
		<link rel="stylesheet" type="text/css" href="../css/registration/bank-registration/layout.css" />
		<!-- Subasta -->
		<link rel="stylesheet" type="text/css" href="../css/register-auction-container/layout.css" />
		
		<link rel="stylesheet" type="text/css" href="../css/register-auction-container/horizontal-progress-bar.css" />
		<link rel="stylesheet" type="text/css" href="../css/register-auction-container/fancy-input.css" />
		<link rel="stylesheet" type="text/css" href="../css/components/dashboard-container/bank-form/layout.css" />
		<link rel="stylesheet" type="text/css" href="../css/popup.css" />
		<link rel="stylesheet" type="text/css" href="../css/effects.css" />
		<!--JS-->
		<script src="../js/fancy_input_effect.js"></script>
		<script src="../js/close_popup.js"></script>
		<script src="../js/remove_bank_account.js"></script>
		<script src="../js/custom_bank_select.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="popup-container hidden confirmation-popup" style="z-index: 2000">
			<div class="popup">
				<span class="cross"></span>
				<div class="popup-content alert">
					<div class="exclamation-circle">!</div>
					<div class="alert-title">Eliminar cuenta bancaria</div>
					<div class="alert-subtitle">¿Está seguro de continuar?</div>
					<div class="btn blue-style close-popup-btn"><span class="btn-text">Aceptar</span></div>
				</div>
			</div>
		</div>

		<bank-registration>
                <div class="register-auction-content"><div class="register-auction-header">
			    <div class="cmpnt-1">
				    <div></div>
			    </div>
				    <horizontal-progress-bar class="cmpnt-2"><div class="horizontal-progress-bar-content" style="grid-template-columns: 1fr 1fr 1fr;">
			    <div class="active">
				    <div class="top-border top-left-border"></div>
				    <div class="top-border top-right-border"></div>
				    <div class="status-text" style="border-bottom: none;">Datos Personales</div>
			    </div>
			
			    <div class="active">
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
		    </div><div class="register-auction-body register-container bank-registration-container">
			    <div class="main-header-container">
				    <div class="main-title">
					    <div>
						    <div class="main-title-icon"></div>
						    Configura tus Cuentas Bancarias
					    </div>
				    </div>
				    <div class="main-parragraph">
					    Necesitamos una cuenta en Soles y una cuenta en Dólares. Por seguridad sólo cuentas del titular
				    </div>
			    </div>
		    <div class="bank-registration-content"><bank-list>
                <div class="bank-list">
              <div class="bank-list-item">
			    <div class="list-col">
				    <div class="list-col-title">Cuenta</div>
				    <div class="list-col-item">N° 1</div>
			    </div>
			    <div class="list-col bank-icon bcp">
				    <div class="list-col-title">Banco</div>
				    <div class="list-col-item"></div>
			    </div>
			    <div class="list-col">
				    <div class="list-col-title">Moneda</div>
				    <div class="list-col-item">Sóles</div>
			    </div>
			    <div class="list-col">
				    <div class="list-col-title">N° de Cuenta</div>
				    <div class="list-col-item">12345678912345678912</div>
			    </div>
			    <div class="list-col">
				    <div class="list-col-title">CCI</div>
				    <div class="list-col-item">12345678912345678912</div>
			    </div>
		        <div class="list-col trash"><div class="list-col-item"></div></div>            
                </div>

                <div class="bank-list-item">
			    <div class="list-col">
				    <div class="list-col-item">N° 2</div>
			    </div>
			    <div class="list-col bank-icon interbank">
				    <div class="list-col-item"></div>
			    </div>
			    <div class="list-col">
				    <div class="list-col-item">Dólares</div>
			    </div>
			    <div class="list-col">
				    <div class="list-col-item">12345678912345678912</div>
			    </div>
			    <div class="list-col">
				    <div class="list-col-item">12345678912345678912</div>
			    </div>
		        <div class="list-col trash"><div class="list-col-item"></div></div></div>

                </div>
                
               </bank-list>
                <div class="bank-form">
			
                <div class="sub-title">Agregar Nueva Cuenta</div>
		            <div class="bank-form-content">
		            <div class="custom-select-box custom-select" id="bank">
			            <div class="custom-select-value">
				            <div class="default-value">Seleccione Banco</div>
			            </div>
			            <div class="custom-select-icon"></div>
			            <ul class="custom-select-option-list">
				            <li value="bcp"><div class="bcp icon"></div><div>Banco de Crédito</div></li>
				            <li value="interbank"><div class="interbank icon"></div><div>Interbank</div></li>
				            <li value="scotiabank"><div class="scotiabank icon"></div><div>Scotiabank</div></li>
				            <li value="banbif"><div class="banbif icon"></div><div>Banbif</div></li>
			            </ul>
		            </div>
		            <select class="custom-select" id="currency">
			            <option class="custom-option" value="Sóles">Soles (PEN)</option>
			            <option class="custom-option" value="Dólares">Dólares Americanos (DOL)</option>
			            <option class="not-an-option" value="default" selected="" disabled="">Moneda</option>
		            </select>
		            <select class="custom-select" id="bank-account">
			            <option class="custom-option" value="ahorro">Ahorro</option>
			            <option class="custom-option" value="corriente">Corriente</option>
			            <option class="not-an-option" value="default" selected="" disabled="">Tipo de Cuenta</option>
		            </select>
		            <fancy-input id="account-number" placeholder="N° de Cuenta"><div class="fancy-input-content"><div class="fake-placeholder">N° de Cuenta</div>
                        <input value="" type="text"></div>

		            </fancy-input>
                    <fancy-input id="cci" placeholder="CCI"><div class="fancy-input-content"><div class="fake-placeholder">CCI</div>
                         <input value="" type="text"></div>

                    </fancy-input><div class="btn blue-style"><span class="btn-text">Agregar</span></div>

		            </div>
                    </div>
                        <div class="btn regular confirm"><span class="btn-text">Confirmar</span></div></div></div></div>

		</bank-registration>
	

</asp:Content>
