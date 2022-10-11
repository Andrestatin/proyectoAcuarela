package com.acuarela.modeloDAO;

import com.acuarela.configuracion.Conexion;
import com.acuarela.modelo.Compra;
import com.acuarela.modelo.DetalleCompra;
import com.acuarela.modelo.Obra;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CompraDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rsl;

    public int IdCompra() {
        int idc = 0;
        String sql = "select max(id_compra) from compras";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rsl = ps.executeQuery();
            while (rsl.next()) {
                idc = rsl.getInt(1);
            }
        } catch (Exception e) {
        }
        return idc;
    }
    public int guardarCompra(Compra co) {
        String sql="insert into compras(id_cedula,id_pago,FechaCompras,Monto,Estado) values(?,?,?,?,?)";
        try {
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.setInt(1, co.getPersona().getId());
           ps.setDouble(2, co.getMonto());
           ps.setString(3, co.getFecha());
           ps.setInt(4, co.getIdpago());
           ps.setString(5, co.getEstado());
           ps.executeUpdate();
        } catch (Exception e) {
        }
        return 1;
    }
    public int guardarDetalleCompra(DetalleCompra dc) {
        String sql = "insert into detalle_compras(id_obra,id_compra,Cantidad,total)values(?,?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, dc.getId_obra());
            ps.setInt(2, dc.getId_compra());
            ps.setInt(3, dc.getCantidad());
            ps.setDouble(4, dc.getTotal());
            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
        }
        return 1;
    }
    public List misCompras(int id) {
        List lista = new ArrayList();
        String sql = "select * from compras where id_cedula=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rsl = ps.executeQuery();
            while (rsl.next()) {
                Compra com = new Compra();
                com.setId(rsl.getInt(1));
                com.setId(rsl.getInt(2));
                com.setIdpago(rsl.getInt(3));
                com.setFecha(rsl.getString(4));
                com.setMonto(rsl.getDouble(5));
                com.setEstado(rsl.getString(6));
                lista.add(com);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public List Detalle(int id) {
        List lista = new ArrayList();					
        String sql = "select DC.id_detalle,O.imagen,O.titulo,DC.id_compra, DC.Cantidad, DC.total FROM detalle_compras DC inner join obra O on O.id_obra = DC.id_obra where id_compra=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rsl = ps.executeQuery();
            while (rsl.next()) {
                DetalleCompra dcom = new DetalleCompra();
                dcom.setId_detalle(rsl.getInt(1));
                dcom.setObra(new Obra());
                dcom.getObra().setImagen(rsl.getBinaryStream(2));
                dcom.getObra().setTitulo(rsl.getString(3));
                dcom.setId_compra(rsl.getInt(4));
                dcom.setCantidad(rsl.getInt(5));
                dcom.setTotal(rsl.getDouble(6));
                lista.add(dcom);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int Pagar(double monto) {
        String sql = "insert into pago(Monto)values(?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, monto);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return 1;
    }
    public int IdPago() {
        int idpago = 0;
        String sql = "select max(id_pago) from pago";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rsl = ps.executeQuery();
            while (rsl.next()) {
                idpago = rsl.getInt(1);
            }
        } catch (Exception e) {
        }
        return idpago;
    }
}
