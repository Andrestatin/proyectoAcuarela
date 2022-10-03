package com.acuarela.modeloDAO;

import com.acuarela.configuracion.Conexion;
import com.acuarela.modelo.Carrito;
import com.acuarela.modelo.Compra;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CompraDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rsl;
    int r=0;

    public int GenerarCompra(Compra compra) {
        int id_compras;
        String sql="insert into compras(id_cedula,id_pago,FechaCompra,Monto,Estado) values(?,?,?,?,?)";
        try {
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.setInt(1, compra.getPersona().getId());
           ps.setDouble(2, compra.getMonto());
           ps.setString(3, compra.getFecha());
           ps.setInt(4, compra.getIdpago());
           ps.setString(5, compra.getEstado());
           r=ps.executeUpdate();
           
           sql="Select @@IDENTYTY AS id_compra";
           rsl=ps.executeQuery(sql);
           rsl.next();
           id_compras=rsl.getInt("id_compras");
           rsl.close();
            for (Carrito detalle : compra.getDetallecompras()) {
                sql="insert into detalle_compras(id_obra,id_compra,Cantidad,total)values(?,?,?,?)";
                ps=con.prepareStatement(sql);
                ps.setInt(1, detalle.getId_obra());
                ps.setInt(2, id_compras);
                ps.setInt(3, detalle.getCantidad());
                ps.setDouble(4, detalle.getPrecioCompra());
                r=ps.executeUpdate();
            }
        } catch (Exception e) {
        }
        return r;
    }
}
