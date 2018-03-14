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
            <th>Order number</th>
            <th>Employee</th>
            <th>Client</th>
            <th>Date</th>
        </tr>
        <c:forEach items="${orders}" var="order" varStatus="status">
            <tr valign="top">
                <td>${order.getProducer()}</td>
                <td>${order.getEmployee().getName()}</td>
                <td>${order.getClient().getName()}</td>
                <td>${order.getDate()}</td>
                <td><a class = "two" href="${pageContext.servletContext.contextPath}/orders/delete?id=${order.orderId}">Delete</a>
                    <a class = "two" href="${pageContext.servletContext.contextPath}/orders/edit?id=${order.orderId}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
</div>
</body>
</html>