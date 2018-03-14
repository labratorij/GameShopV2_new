<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 13.03.2018
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Game Shop | Изменение записи о работнике</title>
</head>
<body>

<h1>Edit Client</h1>
<c:url var="saveUrl" value="/employees/edit?id=${employeeAttribute.employeeId}" />
<form:form modelAttribute="employeeAttribute" method="POST" action="${saveUrl}">
    <table>
        <tr>
            <td><form:label path="name">Name:</form:label></td>
            <td><form:input path="name"/></td>
        </tr>

        <tr>
            <td><form:label path="passport">Passport: </form:label></td>
            <td><form:input path="passport"/></td>
        </tr>

        <tr>
            <td><form:label path="adress">Adress: </form:label></td>
            <td><form:input path="adress"/></td>
        </tr>

        <tr>
            <td><form:label path="telephone">Telephone: </form:label></td>
            <td><form:input path="telephone"/></td>
        </tr>
    </table>

    <input type="submit" value="Save" />
</form:form>

</body>
</html>
