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
            .login{
    background-image: url("img/fondo_login.jpg");
    font-family: fuenteExterna;
    letter-spacing: 2px
}
        </style>



    </head>
    
    
    <body class="login">
        <div class="container">
            <br><br>			
              <div class=" card bg-info text-white text-center">
                <div class="card-header text-center"><h2>Login</h2></div>
                <table class="table table-striped">
                    <form action="login.jsp" method="get" accept-charset="utf-8" class="form-signin">
                        
                        <tr>
                            <th>
                                Usuario <br/>
                                <input type="text" name="usuario">
                                <br/>
                                Contraseña<br/>
                            <input type="password" name="contrasenia" >
                            <br/><br/><br/>
                            <input  class="btn btn-primary" type="submit" name="button" value="Acceder"></th></tr>
                    </form>
                </table>
                </body>

                </html>