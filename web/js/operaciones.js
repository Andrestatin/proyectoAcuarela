//capturar id fila seleccionada
$(document).ready(function () {
    $("tr #btnDelete").click(function () {
        var ido = $(this).parent().find("#ido").val();
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this imaginary file!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        eliminar(ido);
                        swal("Hemos regrasado tu cuadro a la galería!", {
                            icon: "Eliminado exitosamente",
                        }).then((wiilDelete) => {
                            if (willDelete) {
                                parent.location.href = "Controlador?accion=carrito";
                            }
                        });
                    } else {
                        swal("Tu cuadro espera por tí!");
                    }
                });
    });
    function eliminar(ido) {
        var url = "Controlador?accion=Delete";
        $.ajax({
            type = 'POST',
            url: url,
            data: "ido=" + ido,
            success: function (data, textStatus, jqXHR) {

            }
        });
    }
});
