<%-- 
    Document   : register
    Created on : Oct 16, 2015, 1:21:59 PM
    Author     : willi8jl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>GroopTroop</h1>
        <p>
            <% String msg = request.getParameter("msg");
                if (msg != null)
                    out.print(msg);
            %>
        </p>
        <p>
            Join GroopTroop today
        </p>
        <form method="post" action="control"
            <p>
                <input type="text" placeholder="Full Name" name="name"/>
            </p>
            <p>
                <input type="text" placeholder="Email" name="email"/>
            </p>
            <p>
                <input type="password" placeholder="Password"name="password"/>
            </p>
            <p>
                <input type="submit" value="Register" name="action"
            </p>
        </form>
    </body>
</html>
