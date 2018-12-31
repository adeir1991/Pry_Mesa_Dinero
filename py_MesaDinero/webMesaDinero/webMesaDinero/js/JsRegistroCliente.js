/***************************************************************************
Creado por      : Adeir Modragon Aguirre
Fecha creación  : 30/11/2018

***************************************************************************/
jQuery(function ($) {

    //InitComponents();

    //---Registro cliente
    $('#to-password').on('click', function () { 
        var Tipo = $("#idPersona").val();
        var Nombre = $("#Nombre").val();
        var Apellido = $("#Apellido").val();
        var Correo = $("#Correo").val();
        var Celular = $("#Celular").val();        
        var datos = { vOption: "RegistroCliente", vNombre: Nombre, vApellido: Apellido, vCorreo: Correo, vCelular: Celular, vTipoCliente: Tipo };
        $.ajax({
            method: "POST",
            url: "Handler/HandlerProcesoRegistro.ashx",
            data: JSON.stringify(datos),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {          
                if (result.blnResultado == true) {
                    alert("Registro Grabado corectamente!");
                } else {
                    alert("Ha ocurrido un error: " + result.strMensaje);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            var error = eval("(" + XMLHttpRequest.responseText + ")");
            aler(error.Message);
            }
        });

    });

    //---Acceso Login
    $('#to-login').on('click', function () {
        var Email = $("#idEmail").val();
        var Clave = $("#idClave").val();
        var datos = { vCorreo: Email, vClaveAcceso: Clave };
        $.ajax({
            method: "POST",
            url: "Handler/HandlerProcesoAcceso.ashx",
            data: JSON.stringify(datos),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                if (result.blnResultado == true) {
                    //alert("Registro Grabado corectamente!");
                    alert("Bienvenido al sistema...porfavor complete sus datos!");
                    location.href = "WfrmRegistroDatos.aspx";
                } else {
                    alert("Ha ocurrido un error: " + result.strMensaje);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { // función que va a ejecutar si hubo algún tipo de error en el pedido
                var error = eval("(" + XMLHttpRequest.responseText + ")");
                aler(error.Message);
            }
        });

    });

    //---Acceso Clave SMS
    $('#DivBtnSMS').on('click', function () {
        var Clave = $("#idClaveSMS").val();
        var datos = { vOption: "ClaveSMS", vClaveAccesoSMS: Clave };
        $.ajax({
            method: "POST",
            url: "Handler/HandlerProcesoRegistro.ashx",
            data: JSON.stringify(datos),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                if (result.blnResultado == true) {
                    alert("Bienvenido al sistema...porfavor complete sus datos!");                    
                    sessionStorage.setItem('key', result.strIdCliente);
                    if (result.strTipoPersona == "P") {
                        location.href = "WfrmRegistroDatos.aspx";
                    } else {
                        location.href = "WfrmRegistroDatosCompany.aspx";
                    }
                    
                } else {
                    alert("Ha ocurrido un error: " + result.strMensaje);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { // función que va a ejecutar si hubo algún tipo de error en el pedido
                var error = eval("(" + XMLHttpRequest.responseText + ")");
                aler(error.Message);
            }
        });

    });

    //---Registro cliente Completo
    $('#save-person').on('click', function () {        
        var TipoDocumento = $("#person-reg-doctype").val();
        var IdCliente = sessionStorage.getItem('key');
        var NroDocumento = $("#NroDocumento").val();
        var Nombres = $("#Nombres").val(); 
        var ApellidoPat = $("#ApellidoPat").val();
        var ApellidoMat = $("#ApellidoMat").val();
        var FechaNacimiento = $("#FechaNacimiento").val();
        var Email = $("#Email").val();
        var TelefonoCelular = $("#TelefonoCelular").val();
        var Pais = $("#Pais").val();
        var Departamento = $("#Departamento").val();
        var Provincia = $("#Provincia").val();
        var Distrito = $("#Distrito").val();
        var Direccion = $("#Direccion").val();
        var SituacionLaboral = $('input:radio[name=SituacionLaboral]:checked').val();
        var PersonaPolitica = $('input:radio[name=PersonaPolitica]:checked').val();
        var OrigenFondos = $("#OrigenFondos").val();
        var EntidadPublica = $("#EntidadPublica").val();
        var Cargo = $("#Cargo").val();
        var TipoPersona = "P";

        if (IdCliente == "" || IdCliente == null) {
            alert("Usuario no registrado..!");
            return;
        } else {
            var datos = { vOption: "RegistroClienteCompleto", vTipoDocumento: TipoDocumento, vNroDocumento: NroDocumento, vNombre: Nombres, vApellido: ApellidoPat, vApellidoMat: ApellidoMat, dFechaNacimiento: FechaNacimiento, vCorreo: Email, vCelular: TelefonoCelular, vPais: Pais, vDepartamento: Departamento, vProvincia: Provincia, vDistrito: Distrito, vDireccion: Direccion, vSituacionLaboral: SituacionLaboral, vOrigenFondos: OrigenFondos, vPersonaPolitica: PersonaPolitica, vEntidadPublica: EntidadPublica, vCargo: Cargo, vIdCliente: IdCliente, vTipoCliente: TipoPersona };
        }        

        //return;
        $.ajax({
            method: "POST",
            url: "Handler/HandlerProcesoRegistro.ashx",
            data: JSON.stringify(datos),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                if (result.blnResultado == true) {
                    alert("Bienvenido al sistema...porfavor complete sus datos!");                    
                    location.href = "WfrmRegistroBank.aspx";
                } else {
                    alert("Ha ocurrido un error: " + result.strMensaje);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { // función que va a ejecutar si hubo algún tipo de error en el pedido
                var error = eval("(" + XMLHttpRequest.responseText + ")");
                alert(error.Message);
            }
        });

    });
    


});

//#region Funciones
function InitComponents() {
//    VulcoCode.CloseEffect("panelmensaje");
//    VulcoCode.CloseEffect("PnlPrincipal");
}
