<%@ page import="java.sql.*" %>
<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Console</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
        }
        h1, h2 {
            margin-top: 20px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin-bottom: 10px;
            border: none; /* Remove border */
        }
        a {
            color: white;
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        a:hover {
            background-color: white;
            color: black;
        }
    </style>
</head>
<body>
    <h1>Admin Console</h1>
    <a href="createArticle.jsp">Create New Article</a>
    <a href="editArticle.jsp">Edit Article</a>
    <a href="viewArticle.jsp">View Article</a>
    <h2>All Articles</h2>
    <ul>
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fmp", "root", "root");
                stmt = conn.createStatement();
                String query = "SELECT * FROM articles";
                rs = stmt.executeQuery(query);

                while (rs.next()) {
                    int articleId = rs.getInt("ArticleID");
                    String title = rs.getString("Title");
                    out.println("<li><a href='viewArticle.jsp?articleId=" + articleId + "'>" + title + "</a> | <a href='editArticle.jsp?articleId=" + articleId + "'>Edit</a> | <a href='deleteArticle.jsp?articleId=" + articleId + "'>Delete</a></li>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }

            // Sample data - Random English articles
            String[] loremIpsumArticles = {
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tincidunt neque vel vehicula. Sed vitae felis vel leo auctor laoreet. Proin vehicula, dui at accumsan lobortis, metus risus gravida orci, ut rutrum magna purus sed libero.",
                "Phasellus vulputate ultricies ultricies. Vestibulum rhoncus semper mauris, id pharetra turpis consectetur sit amet. Duis ut eleifend nunc. Curabitur tincidunt posuere tortor, eget viverra libero auctor sed.",
                "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ac est a risus suscipit placerat ut in orci. Quisque eget mi vel sapien blandit euismod id vel nibh.",
                "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer nec purus feugiat, laoreet enim in, ullamcorper purus. Nam efficitur arcu a tellus consequat pharetra.",
                "Donec suscipit felis quis velit fringilla, a hendrerit ligula gravida. Nulla facilisi. Morbi ut purus in lectus eleifend finibus. Phasellus quis magna felis."
            };
            for (int i = 0; i < loremIpsumArticles.length; i++) {
                int articleId = i + 1000; // Generate unique IDs for sample articles
                out.println("<li><strong>ID:</strong> " + articleId + " - <a href='#'>" + loremIpsumArticles[i] + "</a> | <a href='#'>Edit</a> | <a href='#'>Delete</a></li>");
               
                
            }
            
            for (int i = 1; i <= 10; i++) {
                int articleId = 1000 + i; // Generate unique IDs for sample articles
                out.println("<div class='article'>");
                out.println("<h2>Article " + i + "</h2>");
              
                out.println("<p><strong>Content:</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum tincidunt neque vel vehicula. Sed vitae felis vel leo auctor laoreet. Proin vehicula, dui at accumsan lobortis, metus risus gravida orci, ut rutrum magna purus sed libero.</p>");
                out.println("<p><strong>Visible:</strong> Yes</p>");
                out.println("</div>");
            }
        %>
        %>
    </ul>
</body>
</html>
