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
        <title>Modificación</title>
    </head>
    <body class="fondo">>
        <% request.setCharacterEncoding("UTF-8");%>
        <div class="container">
            <br><br>
            <div class="card bg-info text-white text-center">
                <div class="card-heading text-center">Modificacion de Videojuego <br/> Solo tienes permitido modificar el nombre y el genero</div>
                <br/><br/>
                <form method="get" action="altaVideojuegosModificados.jsp">
                    <div class="form-group text-center"> 
                        <label>&nbsp;&nbsp;Codigo Videojuego:&nbsp;</label><br/><input type="text" size="30" name="codvid" value="<%= request.getParameter("codvid")%>" readonly>
                    </div>
                    <div class="form-group text-center">
                        <label>&nbsp;&nbsp;Codigo Plataforma:&nbsp;</label><br/><input type="text" size="30" name="codplat" value="<%= request.getParameter("codplat")%>" readonly>
                    </div>
                    <div class="form-group text-center">
                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label><br/><input type="text" size="30" name="nomvid" value="<%= request.getParameter("nomvid")%>">
                    </div>
                    <div class="form-group text-center">
                        <label>&nbsp;&nbsp;Genero:&nbsp;</label><br/><input type="text" size="30" name="genvid" value="<%= request.getParameter("genvid")%>">
                    </div>
                   
                    

                    <hr>
                    &nbsp;&nbsp;<a href="biblioteca.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
                    <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok" ></span>Aceptar</button><br><br>
                </form>

            </div>
        </div>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>