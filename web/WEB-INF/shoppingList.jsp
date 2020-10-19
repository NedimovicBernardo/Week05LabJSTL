<%-- 
    Document   : shoppingList
    Created on : Oct 18, 2020, 7:02:46 PM
    Author     : 816076
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello ${username}</p>
        
        <p><a href="ShoppingList?action=logout">Log out</a></p>
        
        <form action="ShoppingList" method="post">
            <h2>Add Item: </h2>
            <input type="text" name="addNewItem">
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add item">
        </form>
        
        <form action="ShoppingList" method="post">
            <ul>
                <c:forEach items="${item}" var="newItem">
                    
                    <li><input type="radio" name="radio" value="${newItem}"><c:out value="${newItem}"/></li> 
                    
                </c:forEach>
            </ul>
            <input type="submit" value="Delete">
            <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>
