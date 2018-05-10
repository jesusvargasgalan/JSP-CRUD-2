<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
</head>
<body>
    <%
        try {
            String usuario = request.getParameter("usuario");
            String contrasenia = request.getParameter("contrasenia");
            
            HashMap<String, String> m = new HashMap<String, String>();
            m.put("admin", "admin");
            
            
            if (m.get(usuario).equals(contrasenia)) {
                response.sendRedirect("biblioteca.jsp");
                
            } else {
                response.sendRedirect("falloLogin.jsp");
            }
        } catch (Exception e) {
            response.sendRedirect("falloLogin.jsp");
        }
    %>
</body>
</html>