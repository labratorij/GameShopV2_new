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
            <th>Passport</th>
            <th>Adress</th>
            <th>Telephone</th>
        </tr>
        <c:forEach items="${employees}" var="employee" varStatus="status">
            <tr valign="top">
                <td>${employee.getName()}</td>
                <td>${employee.getPassport()}</td>
                <td>${employee.getAdress()}</td>
                <td>${employee.getTelephone()}</td>
                <td><a class = "two" href="${pageContext.servletContext.contextPath}/employees/delete?id=${employee.employeeId}">Delete</a>
                    <a class = "two" href="${pageContext.servletContext.contextPath}/employees/edit?id=${employee.employeeId}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
</div>
</body>
</html>