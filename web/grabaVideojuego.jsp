<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap-theme.min.css"  crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"  crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="fondo.css">

        <title>Alta</title>
    </head>
    <body class="fondo">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca_videojuegos", "root", "");
            Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM plataforma INNER JOIN videojuegos on plataforma.codplat=videojuegos.codplat ");
            request.setCharacterEncoding("UTF-8");

            // Comprobamos que el videojuego no ha sido introducido con anterioridad
            String consultaCodVideojuego = "SELECT * FROM videojuegos WHERE codvid="
                    + Integer.valueOf(request.getParameter("codvid"));

            ResultSet numeroVideojuegos = s.executeQuery(consultaCodVideojuego);
            numeroVideojuegos.last();

            if (numeroVideojuegos.getRow() != 0) {
                out.println("Te has pasado comprando videojuegos,lo tienes repetido"
                        + request.getParameter("codvid") + ".");
            } else {
                String insercion = "INSERT INTO VIDEOJUEGOS VALUES(" + Integer.valueOf(request.getParameter("codvid"))
                        + ", " + Integer.valueOf(request.getParameter("codplat"))
                        + ", '" + request.getParameter("nomvid")
                        + "','" + request.getParameter("genvid") + " ', '" + request.getParameter("descripcion") + "')";

                s.execute(insercion);

            }
            conexion.close();
        %>
        <br>
        <a href="biblioteca.jsp" class="btn btn-primary btn-lg btn-block" ><span class="glyphicon glyphicon-home"></span>Videojuego dado de alta correctamente<br/> click para volver</button>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</body>
</html>