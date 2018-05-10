<%@ page import ="java.sql.*" %>
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
        <title>Alta Correcta</title>
    </head>
    <body class="fondo">>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca_videojuegos", "root", "");
            Statement s = conexion.createStatement();
            request.setCharacterEncoding("UTF-8");
            String usuario = request.getParameter("usuario");    
            String contrasenia = request.getParameter("contrasenia");
            String idusuario = request.getParameter("idusuario");
    
    
    //ResultSet rs;
    int i = s.executeUpdate("insert into login(contrasenia,idusuario,usuario) values ('" + usuario+ "','" + contrasenia+ "','" + idusuario + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("index.jsp?q=cambia");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("inxed.jsp?q=cambia");
    }
%>