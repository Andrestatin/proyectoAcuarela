
package com.acuarela.modelo;
import com.acuarela.modelo.Obra;


public class DetalleCompra {
    int id_detalle;	
    int id_obra;	
    int id_compra;	
    int Cantidad;	
    Double total;
    Obra obra;

    public DetalleCompra() {
    }

    public DetalleCompra(int id_detalle, int id_obra, int id_compra, int Cantidad, Double total, Obra obra) {
        this.id_detalle = id_detalle;
        this.id_obra = id_obra;
        this.id_compra = id_compra;
        this.Cantidad = Cantidad;
        this.total = total;
        this.obra = obra;
    }

    public int getId_detalle() {
        return id_detalle;
    }

    public void setId_detalle(int id_detalle) {
        this.id_detalle = id_detalle;
    }

    public int getId_obra() {
        return id_obra;
    }

    public void setId_obra(int id_obra) {
        this.id_obra = id_obra;
    }

    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Obra getObra() {
        return obra;
    }

    public void setObra(Obra obra) {
        this.obra = obra;
    }
    
}

