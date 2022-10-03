package com.acuarela.controlador;

import com.acuarela.configuracion.Fecha;
import com.acuarela.modelo.Carrito;
import com.acuarela.modelo.Compra;
import com.acuarela.modelo.Obra;
import com.acuarela.modelo.Pago;
import com.acuarela.modelo.Persona;
import com.acuarela.modeloDAO.CompraDAO;
import com.acuarela.modeloDAO.ObraDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    ObraDAO odao = new ObraDAO();
    Obra o = new Obra();
    List<Obra> obras = new ArrayList<>();
    List<Carrito> listaCarrito = new ArrayList<>();
    int item;
    double totalPagar = 0.0;
    int cantidad = 1;

    int ido;
    Carrito carr;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        obras = odao.listar();
        switch (accion) {
            case "Pagar":
                totalPagar = 0.0;
                //capturar id
                ido = Integer.parseInt(request.getParameter("id"));
                //busqueda del objerto ido que tiene el id capturado  la variable o almacena la obra
                o = odao.listarId(ido);
                item = item + 1;
                carr = new Carrito();
                //cuando el usuario seleccione la obra debe agregarse dentro del objeto Carrito
                carr.setItem(item);
                carr.setId_obra(o.getId());
                carr.setTitulo(o.getTitulo());
                carr.setDescripcion(o.getDescripcion());
                carr.setPrecioCompra(o.getPrecio());
                carr.setCantidad(cantidad);
                carr.setSubtotal(cantidad * o.getPrecio());
                listaCarrito.add(carr);
                //enviar monto a pagar
                for (int i = 0; i < listaCarrito.size(); i++) {
                    totalPagar = totalPagar + listaCarrito.get(i).getSubtotal();
                }
                request.setAttribute("totalPagar", totalPagar);
                //Enviar al carrito toda la lista
                request.setAttribute("carrito", listaCarrito);
                //mostar la cantidad de elementos que tiene listaCarrito
                request.setAttribute("contador", listaCarrito.size());
                //cuando se realicen estas acciones mostrar pagina de carrito de compras
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;

            case "AgregarCarrito":
                int pos = 0;
                cantidad = 1;
                //capturar id
                ido = Integer.parseInt(request.getParameter("id"));
                //busqueda del objerto ido que tiene el id capturado, la variable o almacena la obra
                o = odao.listarId(ido);
                if (listaCarrito.size() > 0) {
                    for (int i = 0; i < listaCarrito.size(); i++) {
                        if (ido == listaCarrito.get(i).getId_obra()) {
                            pos=i;
                        }
                    }
                    if (ido == listaCarrito.get(pos).getId_obra()) {
                        cantidad = listaCarrito.get(pos).getCantidad() + cantidad;
                        double subtotal = listaCarrito.get(pos).getPrecioCompra() * cantidad;
                        listaCarrito.get(pos).setCantidad(cantidad);
                        listaCarrito.get(pos).setSubtotal(subtotal);
                    } else {
                        item = item + 1;
                        carr = new Carrito();
                        carr.setItem(item);
                        carr.setId_obra(o.getId());
                        carr.setTitulo(o.getTitulo());
                        carr.setDescripcion(o.getDescripcion());
                        carr.setPrecioCompra(o.getPrecio());
                        carr.setCantidad(cantidad);
                        carr.setSubtotal(cantidad * o.getPrecio());
                        listaCarrito.add(carr);
                    }
                } else {
                    item = item + 1;
                    carr = new Carrito();
                    //cuando el usuario seleccione la obra debe agregarse dentro del objeto Carrito
                    carr.setItem(item);
                    carr.setId_obra(o.getId());
                    carr.setTitulo(o.getTitulo());
                    carr.setDescripcion(o.getDescripcion());
                    carr.setPrecioCompra(o.getPrecio());
                    carr.setCantidad(cantidad);
                    carr.setSubtotal(cantidad * o.getPrecio());
                    listaCarrito.add(carr);
                }

                //mostar la cantidad de elementos que tiene listaCarrito
                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
            case "Delete":
                //capturar id_obra que estamos enviando desde operaciones.js
                int id_obra = Integer.parseInt(request.getParameter("ido"));
                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getItem() == id_obra) {
                        listaCarrito.remove(i);
                    }
                }
                request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                break;
            case "ActualizarCantidad":
                int idobr=Integer.parseInt(request.getParameter("ido"));
                int cant=Integer.parseInt(request.getParameter("Cantidad"));
                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getId_obra()==idobr) {
                        listaCarrito.get(i).setCantidad(cant);
                        double st=listaCarrito.get(i).getPrecioCompra()*cant;
                        listaCarrito.get(i).setSubtotal(st);
                    } else {
                    }
                }
                break;
            case "Carrito":
                totalPagar = 0.0;
                //enviar lista del carrito
                request.setAttribute("carrito", listaCarrito);
                //enviar monto a pagar
                for (int i = 0; i < listaCarrito.size(); i++) {
                    totalPagar = totalPagar + listaCarrito.get(i).getSubtotal();
                }
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;
            default:
                //listar todas las acuarelas
                request.setAttribute("obras", obras);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
            case "GenerarCompra":
                Persona cliente=new Persona();
                cliente.setId(1);
                CompraDAO dao=new CompraDAO();
                Compra compra=new Compra(cliente,1,Fecha.FechaBD(),totalPagar,"Pagado", listaCarrito);
                int rpsta=dao.GenerarCompra(compra);
                if(rpsta!=0&&totalPagar>0){
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }else{
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
