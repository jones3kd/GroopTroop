<%-- 
    Document   : group
    Created on : Dec 3, 2015, 2:35:21 PM
    Author     : willi8jl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <button onclick="post()">Post</button>
        <ul id ="post"></ul>
        </p>
            <script>
                function post() {
                var body = prompt("Create a new post")
                
                document.getElementById("post").innerHTML += "<li>" + body + "</li>"
            }
            </script>
            
    </body>
</html>
