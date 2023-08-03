<%-- 
    Document   : mostrarUsuarios
    Created on : 22/07/2023, 5:53:42 p. m.
    Author     : l3ide
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Lista de usuarios registrados</h1>
        <% 
            List<Producto> listaProducto = (List) request.getSession().getAttribute("listaProducto");
            int cont = 1;
            for (Producto pro : listaProducto) {                     
        %>
        <table>
            <tr>
                <th>Usuario N°</th>
                <th>Nombre</th>
                <th>Despcripcion</th>
                <th>Fecha vencimiento</th>
                <th>Precio</th>
                <th>Cantidad Stock</th>
                <th>Categoria</th>
            </tr>
            <tr>
                <td><%=cont%></td>
                <td><%=pro.getNombre()%></td>
                <td><%=pro.getDescripcion()%></td>
                <td><%=pro.getFecha()%></td>
                <td><%=pro.getPrecio()%></td>
                <td><%=pro.getStock()%></td>
                <td><%=pro.getCategoria()%></td>
            </tr>
            <% cont = cont + 1;%>
        </table>
        <%} %>
        
    </body>
</html>
