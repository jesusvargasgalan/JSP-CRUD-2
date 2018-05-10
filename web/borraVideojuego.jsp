<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <link rel="stylesheet" type="text/css" href="fondo.css">
  <body class="fondo">>
    <%
      Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca_videojuegos","root","");
          Statement s = conexion.createStatement();
         
          s.execute ("DELETE FROM videojuegos WHERE codvid=" + request.getParameter("codvid"));
          
      
      s.close();
    %>	
    <script>document.location = "biblioteca.jsp"</script> 
  </body>
</html>