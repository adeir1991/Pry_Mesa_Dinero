/***************************************************************************
Creado por      : Adeir Modragon Aguirre
Fecha creación  : 30/11/2018

***************************************************************************/
jQuery(function ($) {

    //InitComponents();



    $('#to-password').on('click', function () {        
        
        var Nombre = $("#Nombre").val();
        var Apellido = $("#Apellido").val();
        var Correo = $("#Correo").val();
        var Celular = $("#Celular").val();
        //var datos = new FormData();
        //datos.append("Option", "Registro");        
        var datos = { Option: "Registro", vNombre: Nombre, vApellido: Apellido, vCorreo: Correo };

        ProyectoMD.AJAX("Handler/HandlerProcesoRegistro.ashx", datos, function (resultado) {
            $("#Fondo").fadeOut(250);
            window.location.href = resultado;
        });

    });
});

//#region Funciones
function InitComponents() {

//    VulcoCode.CloseEffect("panelmensaje");
//    VulcoCode.CloseEffect("PnlPrincipal");
}
