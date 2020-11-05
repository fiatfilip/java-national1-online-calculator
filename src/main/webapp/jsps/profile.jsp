<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fiatf
  Date: 05.11.20
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Profile page<br>
<c:out value="${requestScope.user.username}"/>

<a href="<c:out value="${pageContext.request.contextPath}"/>/logout">Logout</a>
</body>
</html>
