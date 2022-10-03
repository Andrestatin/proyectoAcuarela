$(document).ready(function () {
    $("tr #btnDelete").click(function () {
        var ido = $(this).parent().find("#ido").val();
        swal({
            title: "Te perderás de esta hermosa obra?",
            text: "Una una Vez Eliminada, Deberas Agregarla de Nuevo!",
            icon: "warning",
            buttons: true,
            dangerMode: true
        }).then((willDelete) => {
            if (willDelete) {
                eliminar(ido);
                swal("El cuadro será devuelto a Galería!", {
                    icon: "success",
                }).then((willDelete) => {
                    if (willDelete) {
                        parent.location.href = "Controlador?accion=Carrito";
                    }
                });
            }
        });
    });
    function eliminar(ido) {
        var url = "Controlador?accion=Delete";
        $.ajax({
            type: 'POST',
            url: url,
            data: "ido=" + ido,
            success: function (data, textStatus, jqXHR) {
            }
        });
    }
    $("tr #Cantidad").click(function () {
      var ido=$(this).parent().find("#idobr").val();
      var cantidad=$(this).parent().find("#Cantidad").val();
      var url="Controlador?accion=ActualizarCantidad";
      $.ajax({
            type: 'POST',
            url: url,
            data: "ido="+ido+"&Cantidad="+cantidad,
            success: function (data, textStatus, jqXHR) {
                location.href="Controlador?accion=Carrito";
            }
      });
    });
});


