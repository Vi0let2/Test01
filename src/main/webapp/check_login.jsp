<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Check</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    String url = "jdbc:mysql://localhost:3306/fmp?serverTimezone=Asia/Shanghai";
    String username = "root";
    String password = "root";
    String driver = "com.mysql.cj.jdbc.Driver";
    String query = "SELECT * FROM users WHERE username=? AND password=?";

    try {
        Class.forName(driver);  
        conn = DriverManager.getConnection(url, username, password);  
        request.setCharacterEncoding("utf-8"); 
        
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");

        pst = conn.prepareStatement(query);  
        pst.setString(1, name);
        pst.setString(2, pwd);

        rs = pst.executeQuery();  

        if (rs.next()) {
            response.sendRedirect("admin.jsp");
        } else {
            out.println("<h1>Login failed: Incorrect username or password.</h1>");
        }
    } catch (Exception e) {
        out.println("<h1>Error: " + e.getMessage() + "</h1>");
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        } catch (SQLException ex) {
            out.println("<h1>Error closing database connection: " + ex.getMessage() + "</h1>");
        }
    }
%>
</body>
</html>
