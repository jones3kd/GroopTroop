<%-- 
    Document   : profile
    Created on : Nov 6, 2015, 11:55:10 AM
    Author     : willi8jl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>
        <h1>Hello <% out.print(request.getParameter("userid")); %>! </h1>
        <div id="groups">
            <p>
    </body>
</html>
