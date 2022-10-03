package com.acuarela.modeloDAO;

import com.acuarela.configuracion.Conexion;
import com.acuarela.modelo.Obra;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class ObraDAO{
   Connection con; 
   Conexion cn=new Conexion();
   PreparedStatement ps;
   ResultSet rsl;
   public Obra listarId(int id){
       String sql="select * from obra where id_obra= "+id;
       Obra o=new Obra();
       
       try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rsl=ps.executeQuery();
            while(rsl.next()){
                o.setId(rsl.getInt("id_obra"));
                o.setTitulo(rsl.getString("titulo"));
                o.setDescripcion(rsl.getString("descripcion"));
                o.setImagen(rsl.getBinaryStream("imagen"));
                o.setPrecio(rsl.getDouble("precio"));
            }
       } catch (Exception e) {
       }
       return o;
   }
    public List listar(){
        List<Obra>obras=new ArrayList();
        String sql="select * from obra";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rsl=ps.executeQuery();
            while(rsl.next()){
                Obra o=new Obra();
                o.setId(rsl.getInt("id_obra"));
                o.setTitulo(rsl.getString("titulo"));
                o.setDescripcion(rsl.getString("descripcion"));
                o.setImagen(rsl.getBinaryStream("imagen"));
                o.setPrecio(rsl.getDouble("precio"));
                obras.add(o);
            }
        } catch (Exception e) {
        }
        return obras;
    }
    public void listarImg(int id,HttpServletResponse response){
        String sql="select * from obra where id_obra= "+id;
        InputStream inputStream=null;
        OutputStream outputStream=null;
        BufferedInputStream bufferedInputStream=null;
        BufferedOutputStream bufferedOutputStream=null;
        try {
            outputStream=response.getOutputStream();
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rsl=ps.executeQuery();
            if(rsl.next()){
                inputStream=rsl.getBinaryStream("imagen");
            }
            bufferedInputStream=new BufferedInputStream(inputStream);
            bufferedOutputStream=new BufferedOutputStream(outputStream);
            int i=0;
            while((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);  
            }
        } catch (Exception e) {
        }
}
   
}
