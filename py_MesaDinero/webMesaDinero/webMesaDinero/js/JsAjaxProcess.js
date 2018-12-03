/*
***************************************************************************
CREADO POR          :   ADEIR MODRAGON AGUIRRE
FECHA DE CREACIÓN   :   01-12-2018
DESCRIPCIÓN         :   LIBRERIA PERSONALIZADA
***************************************************************************
*/
$(function () { });

var ProyectoMD = {

    MostrarLoading: function () {
        var dlg = $('<label id="dlgLoading"><div style="text-align: center;"><img  src="../../images/loading3.gif" /></div></label>')
            .dialog({
                dialogClass: 'hide-close',
                resizable: false,
                disable: true,
                modal: true,
                closeOnEscape: false,
                open: function (event, ui) {
                    $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
                },
                position: 'center'
            });
    },

    CerrarLoading: function () {
        $("#dlgLoading").dialog("close");
        $("#dlgLoading").remove();
    },

    CentrarPopup: function (param_popup) {
        var alto_w = $(window).height();
        var ancho_w = $(window).width();
        var alto_m = $("#" + param_popup).height();
        ancho_m = $("#" + param_popup).width();
        var an = ancho_w - ancho_m;
        var al = alto_w - alto_m;
        $("#" + param_popup).css({ top: al / 2, left: an / 2 });
    },


    AJAX: function (strPageMethod, objJsonParams, callbackOK) {
        var Response;
        $.ajax({
            method: "POST",
            url: strPageMethod,
            data: JSON.stringify(objJsonParams),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (result) {
                if (result != null) {
                    Response = result;
                    if (typeof callbackOK == 'function') { callbackOK.call(result); }
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            var error = eval("(" + XMLHttpRequest.responseText + ")");
                aler(error.Message);
            }
        });
        return Response;
    },

    //    ActualizarIconos: function (Table) {
    //        var reemplazo = {
    //            'ui-icon-seek-first': 'ace-icon fa fa-angle-double-left bigger-140 center',
    //            'ui-icon-seek-prev': 'ace-icon fa fa-angle-left bigger-140 center',
    //            'ui-icon-seek-next': 'ace-icon fa fa-angle-right bigger-140 center',
    //            'ui-icon-seek-end': 'ace-icon fa fa-angle-double-right bigger-140 center'
    //        };

    //        $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function () {
    //            var icon = $(this);
    //            var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
    //            if ($class in reemplazo) icon.attr('class', 'ui-icon ' + reemplazo[$class]);
    //        })
    //    },


    UploadFiles: function (strPageMethod, objJsonParams, callbackOK) {
        var Response;
        $.ajax({
            method: "POST",
            url: strPageMethod,
            data: objJsonParams,
            processData: false,
            contentType: false,
            async: false,
            success: function (result) {
                if (result.d != null) {
                    Response = result.d;
                    if (typeof callbackOK == 'function') { callbackOK.call(this); }
                }
            }
        });
        return Response;
    },

    //runEffect: function (Texto) {
    //    $("#TextError").html(Texto);
    //    $("#floating-top-right").fadeIn(function () {
    //        setTimeout(function () {
    //            $("#floating-top-right:visible").removeAttr("style").fadeOut();
    //        }, 5000);
    //    });
    //},

    //ShowDialog: function (ID, Height, Width, Title) {
    //    $("#" + ID).dialog({
    //        autoOpen: true,
    //        height: Height,
    //        width: Width,
    //        modal: true,
    //        title: Title,
    //        close: function () {
    //            $(this).dialog("close");
    //        }
    //    });
    //},

    //CloseDialog: function (ID) {
    //    $("#" + ID).dialog("close");
    //},

    //CalendarSpanish: function () {
    //    $.datepicker.regional['es'] = {
    //        closeText: 'Cerrar',
    //        prevText: '<Ant',
    //        nextText: 'Sig>',
    //        currentText: 'Hoy',
    //        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    //        monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
    //        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
    //        dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
    //        dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
    //        weekHeader: 'Sm',
    //        dateFormat: 'yy/mm/dd',
    //        firstDay: 1,
    //        isRTL: false,
    //        showMonthAfterYear: false,
    //        yearSuffix: ''
    //    };
    //    $.datepicker.setDefaults($.datepicker.regional['es']);
    //},

    //ShowCalendar: function () {
    //    $(".calendario").datepicker({ autoclose: true, todayHighlight: true, dateFormat: 'dd/mm/yy' });
    //    $(".calendario").datepicker("setDate", new Date());
    //    VulcoCode.CalendarSpanish();
    //},

    //ShowTab: function (IDControl) {
    //    $("#" + IDControl).tabs();
    //},

    //ShowCombo: function (VarWidth) {
    //    $(".combo").selectmenu({ width: VarWidth });
    //}


};