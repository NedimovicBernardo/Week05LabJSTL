<%-- 
    Document   : register
    Created on : Oct 18, 2020, 7:02:26 PM
    Author     : 816076
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <form action="ShoppingList" method="post">
            <h1>Shopping List</h1>
            <label>Username: </label>
            <input type="text" name="user">
            <input type="hidden" name="action" value="register">
            <input type="submit" value="Register">
        </form>
    </body>
</html>
