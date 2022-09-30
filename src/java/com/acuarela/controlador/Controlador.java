
package com.acuarela.controlador;

import com.acuarela.modelo.Carrito;
import com.acuarela.modelo.Obra;
import com.acuarela.modelo.ObraDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    ObraDAO odao=new ObraDAO();
    Obra o=new Obra();
    List<Obra> obras=new ArrayList<>();
    List<Carrito> listaCarrito=new ArrayList<>();
    int item;
    double totalPagar=0.0;
    int cantidad=1;
    
    int ido;
    Carrito carr;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
        obras=odao.listar();
            switch (accion) {
            case "Pagar":
                totalPagar=0.0;
                //capturar id
                ido=Integer.parseInt(request.getParameter("id"));
                //busqueda del objerto ido que tiene el id capturado  la variable o almacena la obra
                o=odao.listarId(ido);
                item=item+1;
                carr=new Carrito();
                //cuando el usuario seleccione la obra debe agregarse dentro del objeto Carrito
                carr.setItem(item);
                carr.setId_obra(o.getId());
                carr.setTitulo(o.getTitulo());
                carr.setDescripcion(o.getDescripcion());
                carr.setPrecioCompra(o.getPrecio());
                carr.setCantidad(cantidad);
                carr.setSubtotal(cantidad*o.getPrecio());
                listaCarrito.add(carr);
                //enviar monto a pagar
                for (int i=0; i<listaCarrito.size(); i++){
                        totalPagar=totalPagar + listaCarrito.get(i).getSubtotal();
                }
                request.setAttribute("totalPagar", totalPagar);
                //Enviar al carrito toda la lista
                request.setAttribute("carrito", listaCarrito);
                //mostar la cantidad de elementos que tiene listaCarrito
                request.setAttribute("contador",listaCarrito.size()); 
                //cuando se realicen estas acciones mostrar pagina de carrito de compras
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;
                
            case "AgregarCarrito":
                //capturar id
                int  ido=Integer.parseInt(request.getParameter("id"));
                //busqueda del objerto ido que tiene el id capturado  la variable o almacena la obra
                o=odao.listarId(ido);
                item=item+1;
                Carrito carr=new Carrito();
                //cuando el usuario seleccione la obra debe agregarse dentro del objeto Carrito
                carr.setItem(item);
                carr.setId_obra(o.getId());
                carr.setTitulo(o.getTitulo());
                carr.setDescripcion(o.getDescripcion());
                carr.setPrecioCompra(o.getPrecio());
                carr.setCantidad(cantidad);
                carr.setSubtotal(cantidad*o.getPrecio());
                listaCarrito.add(carr);
                //mostar la cantidad de elementos que tiene listaCarrito
                request.setAttribute("contador",listaCarrito.size());
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
            case "Carrito":
                  totalPagar=0.0;
                  //enviar lista del carrito
                  request.setAttribute("carrito", listaCarrito);
                  //enviar monto a pagar
                  for (int i=0; i<listaCarrito.size(); i++){
                      totalPagar=totalPagar + listaCarrito.get(i).getSubtotal();
                  }
                  request.setAttribute("totalPagar", totalPagar);
                  request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;
            default:
                //listar todas las acuarelas
                request.setAttribute("obras", obras);
                request.getRequestDispatcher("index.jsp").forward(request, response);
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
