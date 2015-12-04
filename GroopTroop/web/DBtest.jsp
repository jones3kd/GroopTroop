<%-- 
    Document   : test
    Created on : Nov 24, 2015, 1:59:57 PM
    Author     : Tim
--%>

<%@page import="model.CategoryRequest"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Category Table:</h3>

        <%
          CategoryRequest req = new CategoryRequest();
          ArrayList<Category> catData = req.getCategoryTable();
          Iterator<Category> it = catData.iterator();
          int columns = 2;
        %>
        <table border="1">
          <tbody>
            <tr><th>Name</th><th>ID</th></tr>

            <%
              while (it.hasNext()) {
                Category cat = (Category) it.next();
                out.println("<tr>");
                out.println("<td>" + cat.getCategoryname() + "</td>");
                out.println("<td>" + cat.getGroopid() + "</td>");
                out.println("</tr>");
              }
            %>

          </tbody>
        </table>

    </body>
</html>
