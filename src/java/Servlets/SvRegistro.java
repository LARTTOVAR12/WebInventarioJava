
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Producto;



@WebServlet(name = "SvRegistro", urlPatterns = {"/SvRegistro"})
public class SvRegistro extends HttpServlet {
   

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SvRegistro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvRegistro at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    
    //doGet sirve para traer datos 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //se crea un array con nuevos datos para hacer la prueba si se muestra en pantalla
        List<Producto> listaProducto = new ArrayList<>();
        listaProducto.add(new Producto("Manzana","Es una fruta","12/04/2024", "2000", "19", "Fruta"));
        listaProducto.add(new Producto("Acetaminofen", "Es un medicamento comu para aliviar el dolor ligero", "23/09/2'26", "1000", "56", "Medicamento"));
        listaProducto.add(new Producto("Melon", "5", "01/05/2024", "6000", "1", "fruta"));
        //listaProducto = control.traerProducto();
       
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaProducto", listaProducto);
        
        response.sendRedirect("mostrarUsuarios.jsp");
        
        //processRequest(request, response);
    }

    
    
    // doPOst sirve para ver enviar datos 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String fecha = request.getParameter("fecha");
        String precio = request.getParameter("precio");
        String stock = request.getParameter("stock");
        String categoria = request.getParameter("gategoria");
        
        
        // se crea un system para ver si por medio de consola se imprimo los datos
        System.out.println("el valor del nombre es :" + nombre);
        System.out.println("el valor de la cantidad es :" + descripcion);
        System.out.println("el valor de la fecha es :" + fecha);
        System.out.println("el valor del precio es :" + precio);
        System.out.println("La caintadad en stock es:" + stock);
        System.out.println("la categoria es: "+ categoria);
        
        
    }

    
    

  

}
