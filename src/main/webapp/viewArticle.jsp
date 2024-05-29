<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Article</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 20px;
        }
        h1, h2 {
            margin-bottom: 20px;
        }
        p {
            margin-bottom: 10px;
        }
        .article {
            background-color: #222;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .article h2 {
            color: white;
        }
        .article p {
            color: #ccc;
        }
    </style>
</head>
<body>
    <h1>View Article</h1>
    <%        
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fmp", "root", "root");
            String query = "SELECT * FROM Articles WHERE ArticleID=?";
            pst = conn.prepareStatement(query);
       
            rs = pst.executeQuery();

            if (rs.next()) {
                String title = rs.getString("Title");
                Date creationDate = rs.getDate("CreationDate");
                String content = rs.getString("Content");
                boolean isVisible = rs.getBoolean("IsVisible");

                out.println("<div class='article'>");
                out.println("<h2>" + title + "</h2>");
                out.println("<p><strong>Creation Date:</strong> " + creationDate + "</p>");
                out.println("<p><strong>Content:</strong></p><p>" + content + "</p>");
                out.println("<p><strong>Visible:</strong> " + (isVisible ? "Yes" : "No") + "</p>");
                out.println("</div>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        // Adding 10 articles with Lorem Ipsum text
        for (int i = 1; i <= 10; i++) {
            int articleId = 1000 + i; // Generate unique IDs for sample articles
            out.println("<div class='article'>");
            out.println("<h2>Article " + i + "</h2>");
          
            out.println("<p><strong>Content:</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tincidunt neque vel vehicula. Sed vitae felis vel leo auctor laoreet. Proin vehicula, dui at accumsan lobortis, metus risus gravida orci, ut rutrum magna purus sed libero.</p>");
            out.println("<p><strong>Visible:</strong> Yes</p>");
            out.println("</div>");
        }
    %>
</body>
</html>
