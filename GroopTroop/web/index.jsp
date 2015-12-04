<%-- 
    Document   : index.jsp
    Created on : Oct 16, 2015, 1:06:25 PM
    Author     : willi8jl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
    <head>
        <title>GroopTroop</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>GroopTroop</h1>
        <h2>The anywhere groupware</h2>
        <p>
            <% String msg = request.getParameter("msg");
                if (msg != null)
                    out.print(msg);
                else
                    out.print("Welcome");
            %>
        </p>    
        <form method="post" action="control">
            <p>
                <input type="text" placeholder="Username" name="userid"/>
            </p>
            <p>
            <input type="password" placeholder="Password" name="password"/>
            </p>
            <p>
                <input type="submit" value="Login" name="action" />
            </p>
            <p>
                New to GroopTroop? <a href="control?action=signup"> Sign up here.
            </p>
        </form>
    </body>
</html>
