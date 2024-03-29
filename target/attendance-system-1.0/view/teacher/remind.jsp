<%--
  Created by IntelliJ IDEA.
  User: tran Hoang Phuc
  Date: 10/25/2023
  Time: 1:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FPT University Academic Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/teacher/remind.css">
</head>
<body>
    <jsp:include page="../root/header.jsp"></jsp:include>

    <div class="wrap">
        <form action="sendMail" method="POST">
            <input type="text" value="${requestScope.student.email}" name="email" readonly id="email"><br>
            <input type="text" name="subject" placeholder="Subject" id="subject"><br>
            <textarea name="content" placeholder="Content" cols="80" rows="20" id="content"></textarea><br>
            <button type="submit" id="button">Send</button>
        </form>
    </div>

    <jsp:include page="../root/footer.jsp"></jsp:include>
</body>
</html>
