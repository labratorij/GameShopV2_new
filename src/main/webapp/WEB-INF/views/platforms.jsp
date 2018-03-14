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
            <th>Producer</th>
            <th>Relevance</th>
            <th>Platformcol</th>
        </tr>
        <c:forEach items="${platforms}" var="platform" varStatus="status">
            <tr valign="top">
                <td>${order.getPlatform()}</td>
                <td>${order.getProducer()}</td>
                <td>${order.getRelevance()}</td>
                <td>${order.getPlatformcol()}</td>
                <td><a class = "two" href="${pageContext.servletContext.contextPath}/platforms/delete?id=${platform.platformID}">Delete</a>
                    <a class = "two" href="${pageContext.servletContext.contextPath}/platforms/edit?id=${platform.platformId}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
</div>
</body>
</html>