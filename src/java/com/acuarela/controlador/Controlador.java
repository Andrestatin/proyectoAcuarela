package com.acuarela.controlador;

import com.acuarela.configuracion.Fecha;
import com.acuarela.modelo.Carrito;
import com.acuarela.modelo.Compra;
import com.acuarela.modelo.DetalleCompra;
import com.acuarela.modelo.Obra;
import com.acuarela.modelo.Persona;
import com.acuarela.modeloDAO.CompraDAO;
import com.acuarela.modeloDAO.ObraDAO;
import com.acuarela.modeloDAO.PersonaDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controlador extends HttpServlet {

    ObraDAO odao = new ObraDAO();
    Obra o = new Obra();
    CompraDAO compdao = new CompraDAO();
    PersonaDAO perdao=new PersonaDAO();
    Persona clte = new Persona();

    List obras = new ArrayList();
    List<Carrito> listaCarrito = new ArrayList<>();

    String logging = "Iniciar Sesion";
    String correo = "Iniciar Sesion";
    int item = 0;
    int cantidad = 1;
    double subtotal = 0.0;
    double totalPagar = 0.0;

   
    Carrito carr = new Carrito();
    int idcompra;
    int idpago;
    double montopagar;
    int id_obra = 0;

    Fecha fechaSistem = new Fecha();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("logging", logging);
        session.setAttribute("correo", correo);
        String accion = request.getParameter("accion");
        obras = odao.listar();
        
        switch (accion) {
            case "Pagar":
                agregarCarrito(request);
                request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                break;

            case "AgregarCarrito":
                agregarCarrito(request);
                //mostar la cantidad de elementos que tiene listaCarrito
                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
            case "Delete":
                id_obra=Integer.parseInt(request.getParameter("ido"));
                //capturar id_obra que estamos enviando desde operaciones.js
                if(listaCarrito !=null) {
                    for (int i = 0; i < listaCarrito.size(); i++) {
                        if (listaCarrito.get(i).getItem() == id_obra) {
                            listaCarrito.remove(i);
                        }
                    }
                }
                break;
            case "ActualizarCantidad":
                id_obra= Integer.parseInt(request.getParameter("ido"));
                int cant = Integer.parseInt(request.getParameter("Cantidad"));
                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getId_obra() == id_obra) {
                        listaCarrito.get(i).setCantidad(cant);
                        listaCarrito.get(i).setSubtotal(listaCarrito.get(i).getPrecioCompra()* cant);
                    } 
                }
                break;
            case "Validar":
                String email = request.getParameter("txtemail");
                String pass = request.getParameter("txtpass");
                clte = perdao.Validar(email, pass);
                if (clte.getId() != 0) {
                    logging = clte.getNombre();
                    correo = clte.getCorreo();
                }
                request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                break;
            case "Carrito":
                totalPagar = 0.0;
                item = 0;
                //enviar lista del carrito
                request.setAttribute("carrito", listaCarrito);
                //enviar monto a pagar
                for (int i = 0; i < listaCarrito.size(); i++) {
                    totalPagar = totalPagar + listaCarrito.get(i).getSubtotal();
                    listaCarrito.get(i).setItem(item + i + 1);
                }
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;

            case "RealizarPago":
                montopagar = totalPagar;
                if (clte.getId() != 0 && montopagar > 0) {
                    compdao.Pagar(montopagar);
                    request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                } else {
                    montopagar = 0;
                    request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                }
                break;
            case "GenerarCompra":
                idpago = compdao.IdPago();
                if (clte.getId() != 0 && listaCarrito.size() != 0 && montopagar > 0) {
                    if (totalPagar > 0.0) {
                        Compra co = new Compra();
                        co.setId(clte.getId());
                        co.setFecha(fechaSistem.FechaBD());
                        co.setMonto(totalPagar);
                        co.setIdpago(idpago);
                        co.setEstado("Pago - En Proceso de Envio");
                        compdao.guardarCompra(co);
                        montopagar = 0;

                        idcompra = compdao.IdCompra();
                        for (int i = 0; i < listaCarrito.size(); i++) {
                            DetalleCompra dc = new DetalleCompra();
                            dc.setId_compra(idcompra);
                            dc.setId_obra(listaCarrito.get(i).getId_obra());
                            dc.setCantidad(listaCarrito.get(i).getCantidad());
                            dc.setTotal(listaCarrito.get(i).getPrecioCompra());
                            compdao.guardarDetalleCompra(dc);
                        }
                        listaCarrito = new ArrayList<>();
                        List compra = compdao.misCompras(clte.getId());
                        request.setAttribute("myCompras", compra);
                        request.getRequestDispatcher("Compras.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                }
                break;
            case "MisCompras":
                if (clte.getId() != 0) {
                    List compra = compdao.misCompras(clte.getId());
                    request.setAttribute("myCompras", compra);
                    request.getRequestDispatcher("Compras.jsp").forward(request, response);
                } else if (listaCarrito.size() > 0) {
                    request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                } else {
                    request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                }
                break;
            case "verDetalle":
                totalPagar = 0.0;
                int idcompras = Integer.parseInt(request.getParameter("idcompra"));
                List<DetalleCompra> detalle = compdao.Detalle(idcompras);
                request.setAttribute("myDetalle", detalle);
                for (int i = 0; i < detalle.size(); i++) {
                    totalPagar = totalPagar + (detalle.get(i).getTotal()* detalle.get(i).getCantidad());
                }
                request.setAttribute("montoPagar", totalPagar);
                request.getRequestDispatcher("Detalle.jsp").forward(request, response);
                break;
            case "Registrar":
                String cc =request.getParameter("txtcc");
                String nom = request.getParameter("txtnom");
                String nom2 = request.getParameter("txtnom2");
                String ap = request.getParameter("txtapell");
                String ap2 = request.getParameter("txtapell2");
                String dir = request.getParameter("txtdire");
                String dirdet = request.getParameter("txtdiredet");
                String ciu = request.getParameter("txtciu");
                String dep = request.getParameter("txtdep");
                String em = request.getParameter("txtemail");
                String tel = request.getParameter("txttel");
                String pas = request.getParameter("txtpass");
                clte.setCedula(cc);
                clte.setNombre(nom+" "+nom2);
                clte.setApellido(ap+" "+ap2);
                clte.setDireccion(dir+" "+dirdet);
                clte.setCiudad(ciu);
                clte.setDepartamento(dep);
                clte.setCorreo(em);
                clte.setTelefono(tel);
                clte.setPassword(pas);
                perdao.AgregarCliente(clte);
                request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                break;
            case "Nuevo":
                listaCarrito = new ArrayList();
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
            case "Salir":
                listaCarrito= new ArrayList();
                clte = new Persona();
                session.invalidate();
                logging = "Iniciar Sesion";
                correo = "Iniciar Sesion";
                request.getRequestDispatcher("Controlador?accion=Salirr").forward(request, response);
                break;
            default:
                //listar todas las acuarelas
                request.setAttribute("contador", listaCarrito.size());
                request.setAttribute("obras", obras);
                request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public void agregarCarrito(HttpServletRequest request) {
        cantidad = 1;
        int pos = 0;
        int idop = Integer.parseInt(request.getParameter("id"));
        if (listaCarrito.size() > 0) {
            for (int i = 0; i < listaCarrito.size(); i++) {
                if (listaCarrito.get(i).getId_obra() == idop) {
                    pos = i;
                }
            }
            if (idop == listaCarrito.get(pos).getId_obra()) {
                cantidad = listaCarrito.get(pos).getCantidad() + cantidad;
                subtotal = listaCarrito.get(pos).getPrecioCompra() * cantidad;
                listaCarrito.get(pos).setCantidad(cantidad);
                listaCarrito.get(pos).setSubtotal(subtotal);
            } else {
                //cuando el usuario seleccione la obra debe agregarse dentro del objeto Carrito
                carr = new Carrito();
                o = odao.listarId(idop);
                carr.setItem(item);
                carr.setId_obra(o.getId());
                carr.setTitulo(o.getTitulo());
                carr.setDescripcion(o.getDescripcion());
                carr.setPrecioCompra(o.getPrecio());
                carr.setCantidad(cantidad);
                subtotal = cantidad * o.getPrecio();
                carr.setSubtotal(subtotal);
                listaCarrito.add(carr);
            }
        } else {
            carr = new Carrito();
            o = odao.listarId(idop);
            carr.setId_obra(o.getId());
            carr.setTitulo(o.getTitulo());
            carr.setDescripcion(o.getDescripcion());
            carr.setPrecioCompra(o.getPrecio());
            carr.setCantidad(cantidad);
            subtotal = cantidad * o.getPrecio();
            carr.setSubtotal(subtotal);
            listaCarrito.add(carr);
        }
    }
}

