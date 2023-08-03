

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
    </head>
    <body>
        <form action="SvRegistro" method="post">

                <h4>Registro de Producto</h4>


                <label for="nombre">Nombre del producto:</label><br>
                <input type="text" id="nombre" name="nombre" required><br><br>

                <label for="descripcion">Descripción:</label><br>
                <textarea id="descripcion" name="descripcion" required></textarea><br><br>

                <label for="fecha">Fecha Vencimiento</label><br>
                <input type="date" id="fecha" name="fecha" required><br><br>

                <label for="precio">Precio:</label><br>
                <input type="number" id="precio" name="precio" step="0.01" required><br><br>

                <label for="stock">Cantidad en stock:</label><br>
                <input type="number" id="stock" name="stock" required><br><br>

                <label for="categoria">Categoría:</label>
                <select id="categoria" name="categoria" required>
                    <option value="aseo">Cuidado personal</option>
                    <option value="medicamento">Medicamento</option>
                    <option value=""></option>
                </select><br><br>

                <label for="imagen">Imagen del Producto:</label><br>
                <input type="file" id="imagen" name="imagen" accept="image/*"><br><br>

                <input class="boton" type="submit" value="Registrar Producto">
            </form>
        
        
        <h1>Ver lista de productos</h1><br>
        <p>Para ver los datos de los productos cargados haga click en el siguiente boton</p>
        
        <form action="SvRegistro" method="GET">
            <button type="submit">Mostrar Productos</button>
            
        </form>
        
        
        
    </body>
</html>
