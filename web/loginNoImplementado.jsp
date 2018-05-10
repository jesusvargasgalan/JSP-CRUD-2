<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
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

        <title>Login</title>
    </head>
    <body>
        <%
            String usuario = request.getParameter("usuario");    
            String contrasenia = request.getParameter("contrasenia");
            
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca_videojuegos", "root", "");
                    Statement s = conexion.createStatement();
    Statement st = conexion.createStatement();
        
    ResultSet rs;
    rs = st.executeQuery("select * from login where usuario='" + usuario + "' and contrasenia='" + contrasenia + "'");
    if (rs.next()) {
        session.setAttribute("userid", usuario);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("biblioteca.jsp");
    } else {
        response.sendRedirect("falloLogin.jsp");
    }
%>
    %>
                
    </body>
</html>
