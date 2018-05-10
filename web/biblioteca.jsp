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
            .carousel-control-prev-icon,
            .carousel-control-next-icon {
                height: 100px;
                width: 100px;
                outline: black;
                background-size: 100%, 100%;
                border-radius: 50%;
                border: 3px solid black;
                background-image: none;
            }

            .carousel-control-next-icon:after
            {
                content: '>';
                font-size: 55px;
                color: yellow;
            }

            .carousel-control-prev-icon:after {
                content: '<';
                font-size: 55px;
                color: yellow;
            }
        </style>
        <title>Videojuegos</title>
    </head>

    <body class="fondo">
        <div class="container">
            <br><br>			
            <div class=" card bg-info text-white text-center">
                <div class="card-header text-center"><h2>Videojuegos</h2></div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca_videojuegos", "root", "");
                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery("SELECT plataforma.nomplat,videojuegos.codvid,videojuegos.codplat,videojuegos.nomvid,videojuegos.genvid"
                            + " FROM videojuegos INNER JOIN plataforma ON videojuegos.codplat= plataforma.codplat");
                %>

                <table class="table table-dark table-striped table-hover text-center">
                    <tr><th>Nombre</th><th>Codigo Videojuego</th><th>Codigo Plataforma</th><th>Nombre</th><th>Genero</th><th>Info</th></tr>
                    <form method="get" action="grabaVideojuego.jsp">
                        <tr>        <td><select name="nomplat" >
                                    <option value="" selected="selected">- Lista consolas -</option>
                                    <option value="playstation">(1)playstation</option>
                                    <option value="xbox">(2)xbox</option>
                                    <option value="nintendo switch">(3)Nitendo Switch</option>
                                    <option value="Ordenador">(4)Ordenador</option>
                                    <option value="3ds">(5)Nitendo 3ds</option>
                                </select></td></td>
                            <td><input type="text" name="codvid" size="10"></td>
                            <td><input type="text" name="codplat" size="10"></td>
                            <td><input type="text" name="nomvid" size="10"></td>
                            <td><input type="text" name="genvid" size="10"></td>
                            <td><input type="text" name="descripcion" size="14"></td>
                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td><td></td></tr>           
                    </form>
                    <%
                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("nomplat") + "</td>");
                            out.println("<td>" + listado.getString("codvid") + "</td>");
                            out.println("<td>" + listado.getString("codplat") + "</td>");
                            out.println("<td>" + listado.getString("nomvid") + "</td>");
                            out.println("<td>" + listado.getString("genvid") + "</td>");
                           

                    %>
                     <td>
                        <form method="get" action="descripcionVideojuego.jsp">
                            <input type="hidden" name="codvid" value="<%=listado.getString("codvid")%>">
                            <input type="hidden" name="codplat" value="<%=listado.getString("codplat")%>">
                            <input type="hidden" name="nomvid" value="<%=listado.getString("nomvid")%>">
                            <input type="hidden" name="genvid" value="<%=listado.getString("genvid")%>">
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span>Info</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="modificaVideojuego.jsp">
                            <input type="hidden" name="codvid" value="<%=listado.getString("codvid")%>">
                            <input type="hidden" name="codplat" value="<%=listado.getString("codplat")%>">
                            <input type="hidden" name="nomvid" value="<%=listado.getString("nomvid")%>">
                            <input type="hidden" name="genvid" value="<%=listado.getString("genvid")%>">
                            
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span>Modificar</button>
                        </form>
                    </td>
               
                    <td>

                        <form method="get" action="borraVideojuego.jsp">
                            <input type="hidden" name="codvid" value="<%=listado.getString("codvid")%>"/>
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
                        </form>
                    </td></tr>
                    <%
                        } // while   
                        conexion.close();
                    %>

                </table>


            </div>

        </div>
        <br/><br/>


        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicadores -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- Deslizamiento -->
            <div class="carousel-inner text-center">
                <div class="carousel-item active">
                    <img src="img/mario_bros.jpg" width="800" height="600" alt="Mario Bros">
                </div>
                <div class="carousel-item">
                    <img src="img/godofwar4.jpeg" width="800" height="600" alt="God of War">
                </div>
                <div class="carousel-item">
                    <img src="img/pacman.jpg" width="800" height="600" alt="Pacman">
                </div>

            </div>

            <!-- Controles -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>

        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>