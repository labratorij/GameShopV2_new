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
        </tr>
        <c:forEach items="${clients}" var="client" varStatus="status">
            <tr valign="top">
                <td>${client.getName()}</td>
                <td>${client.getEmail()}</td>
                <td>${client.getTelephone()}</td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
</div>
</body>
</html>