
package com.acuarela.modeloDAO;

import com.acuarela.configuracion.Conexion;
import com.acuarela.modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonaDAO {
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rsl;
    public Persona Validar(String correo, String pass) {
        String sql="select * from persona where Correo=? and Password=?";
        Persona p=new Persona();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, pass);
            rsl= ps.executeQuery();
            while (rsl.next()) {
                p.setId(rsl.getInt("id_cedula"));
                p.setCedula(rsl.getString("cedula"));
                p.setNombre(rsl.getString("Nombre"));
                p.setApellido(rsl.getString("Apellido"));
                p.setDireccion(rsl.getString("Direccion"));
                p.setCiudad(rsl.getString("Ciudad"));
                p.setDepartamento(rsl.getString("Departamento"));
                p.setCorreo(rsl.getString("Correo"));
                p.setTelefono(rsl.getString("Telefono"));
                p.setPassword(rsl.getString("Password"));
            }
        } catch (Exception e) {
        }
        return p;        
    }
    public int AgregarCliente(Persona p) {
        String sql="INSERT INTO persona (cedula,Nombres,Apellidos,Direccion,Ciudad,Departamento,Correo,Telefono,Password)values(?,?,?,?,?,?,?,?,?)";        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1,p.getId());
            ps.setString(2, p.getNombre());
            ps.setString(3, p.getApellido());
            ps.setString(4, p.getDireccion());
            ps.setString(5, p.getCiudad());
            ps.setString(6, p.getDepartamento());
            ps.setString(7, p.getCorreo());
            ps.setString(8, p.getTelefono());
            ps.setString(9, p.getPassword());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return 1;        
    }

}

