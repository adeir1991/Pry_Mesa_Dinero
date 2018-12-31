$(document).ready(function () {
    // Instrucciones a ejecutar al terminar la carga
    // Carga de datos basicos
    var IdCliente = sessionStorage.getItem('key');
    var BDdatos = { vOption: "CargaDatosBasicosCliente", vIdCliente: IdCliente };
    //alert("cargar datos de apellidos y nombres y correo entre otros-" + IdCliente);
    $.ajax({
        method: "POST",
        url: "Handler/HandlerProcesoRegistro.ashx",
        data: JSON.stringify(BDdatos),
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