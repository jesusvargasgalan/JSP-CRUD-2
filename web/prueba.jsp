  <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <style>
            @font-face {
                font-family: fuenteExterna;
                src: url(arcade.TTF);     

            }

            .fondo{
                background-image: url("img/fondo.jpg");
                font-family: fuenteExterna;
                letter-spacing: 2px
            }
        </style>

    </head>

    <body class="fondo">
        <div class="container">
            <br><br>			
            <div class=" card bg-info text-white text-center">
                <div class="card-header text-center"><h2>Descripción</h2></div>
                HashMap datos = new HashMap();
 
// Añadimos datos a nuestro hashMap
        datos.put("Nombre","David");
        datos.put("Apellido1","Otero");
        datos.put("Apellido2","Gutiérrez");
 
// Recorremos el hashMap y mostramos por pantalla el par valor y clave
        Iterator it = datos.entrySet().iterator();
    while (it.hasNext()) {
    Map.Entry e = (Map.Entry)it.next();
    System.out.println(e.getKey() + " " + e.getValue());
            </div>
        </div>

        <br>
        <div class="container">
            <p>
                <a href="biblioteca.jsp" class="btn btn-primary btn-lg btn-block"><span class="glyphicon glyphicon-home"></span>Click para volver</button>

                </a>
            </p>

        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

