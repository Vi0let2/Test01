<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>EDIT Article</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
        }
        h1 {
            margin-top: 20px;
            border-bottom: 2px solid white;
            padding-bottom: 10px;
        }
        form {
            margin-top: 20px;
        }
        form input, form textarea, form select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border-radius: 5px;
            background-color: black;
            color: white;
            box-sizing: border-box;
            border: none; /* Remove border */
            outline: none; /* Remove outline */
        }
        form input[type="checkbox"] {
            width: auto;
        }
        table {
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
            width: 80%;
        }
        table, th, td {
            border: 1px solid white;
            text-align: center;
        }
        th, td {
            padding: 10px;
        }
        .comment-section {
            margin-top: 20px;
            text-align: left;
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }
        .comment-section textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: black;
            color: white;
            border: none; /* Remove border */
            outline: none; /* Remove outline */
        }
        .success-message {
            color: green;
            margin-top: 20px;
        }
    </style>

</head>
<body>


                                <button type="submit" class="btn btn-primary"
								onclick="return checkForm()">submit</button>
    <h1>EDIT Article</h1>
    
    <form method="post" action="create" onsubmit="submitForm(); return false;">
    
    
    
        Title: <input type="text" name="title" required><br>
        Category: <select name="categoryId">
     
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fmp", "root", "root");
                    stmt = conn.createStatement();
                    String categoryQuery = "SELECT * FROM Categories";
                    rs = stmt.executeQuery(categoryQuery);

                    while (rs.next()) {
                        int categoryId = rs.getInt("CategoryID");
                        String categoryName = rs.getString("CategoryName");
                        out.println("<option value='" + categoryId + "'>" + categoryName + "</option>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                }
            %>
    
