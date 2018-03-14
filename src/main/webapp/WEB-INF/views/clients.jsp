<%@ page language="java" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <title>GameShop</title>
</head>

<body>

<div id="main">

    <div id="dialog">
        <br><br><table>
        <tr>
            <th>Name</th>
            <th>email</th>
            <th>telephone</th>
            <th>orders</th>
            <th></th>
        </tr>
        <c:forEach items="${clients}" var="client" varStatus="status">
            <tr valign="top">
                <td>${client.getName()}</td>
                <td>${client.getEmail()}</td>
                <td>${client.getTelephone()}</td>
                <td><a class = "two" href="${pageContext.servletContext.contextPath}/get_list_orders?id=${client.clientId}">show orders</a></td>
                <td><a class = "two" href="${pageContext.servletContext.contextPath}/clients/delete?id=${client.clientId}">Delete</a>
                    <a class = "two" href="${pageContext.servletContext.contextPath}/clients/edit?id=${client.clientId}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
</div>
</body>
</html>