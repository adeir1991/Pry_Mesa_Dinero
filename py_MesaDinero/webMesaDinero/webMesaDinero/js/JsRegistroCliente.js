/***************************************************************************
Creado por      : Adeir Modragon Aguirre
Fecha creación  : 30/11/2018

***************************************************************************/
jQuery(function ($) {

    //InitComponents();

    $('#to-password').on('click', function () { 
        var Tipo = $("#idPersona").val();
        var Nombre = $("#Nombre").val();
        var Apellido = $("#Apellido").val();
        var Correo = $("#Correo").val();
        var Celular = $("#Celular").val();        
        var datos = { Option: "Registro", vNombre: Nombre, vApellido: Apellido, vCorreo: Correo, vCelular: Celular, vTipoCliente: Tipo };              
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

    $('#to-login').on('click', function () {
        var Email = $("#idPersona").val();
        var Clave = $("#Nombre").val();
        var datos = { Option: "Registro", vNombre: Nombre, vApellido: Apellido, vCorreo: Correo, vCelular: Celular, vTipoCliente: Tipo };
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
});

//#region Funciones
function InitComponents() {
//    VulcoCode.CloseEffect("panelmensaje");
//    VulcoCode.CloseEffect("PnlPrincipal");
}
