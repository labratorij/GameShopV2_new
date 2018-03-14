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
            <th>Developer</th>
            <th>Publisher</th>
            <th>Genre</th>
            <th>Age Rating</th>
            <th>Date</th>
            <th>Cost of purchase</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>
        <c:forEach items="${videogames}" var="videogame" varStatus="status">
            <tr valign="top">
                <td>${videogame.getVideogame()}</td>
                <td>${videogame.getDeveloper()}</td>
                <td>${videogame.getPublisher()}</td>
                <td>${videogame.getGenre()}</td>
                <td>${videogame.getAgeRating()}</td>
                <td>${videogame.getDate()}</td>
                <td>${videogame.getCostOfPurchase()}</td>
                <td>${videogame.getPrice()}</td>
                <td>${videogame.getQuantity()}</td>
                <td><a class = "two" href="${pageContext.servletContext.contextPath}/videogames/delete?id=${videogame.videogameId}">Delete</a>
                    <a class = "two" href="${pageContext.servletContext.contextPath}/videogames/edit?id=${videogame.videogameId}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
</div>
</body>
</html>