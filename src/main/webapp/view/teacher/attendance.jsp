<%-- 
    Document   : attendance
    Created on : Oct 4, 2023, 9:38:21 PM
    Author     : tran Hoang Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>FPT University Academic Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../css/teacher/attendance.css">
</head>
<body>
<jsp:include page="../root/header.jsp"></jsp:include>
<div id="header">
    <div class="class-info">
        <input type="hidden" id="lessonId" value="${requestScope.lessonId}" readonly>
        <p>Class: <b>${requestScope.lesson.groupname}</b> - <b>${requestScope.lesson.courseName}</b></p>
        <p>Slot ${requestScope.lesson.timeSlot <= 6 ?requestScope.lesson.timeSlot: requestScope.lesson.timeSlot-5} - <fmt:formatDate type="date" value="${requestScope.lesson.date}"/> with lecture <b>${requestScope.lesson.instructorCode}</b></p>
    </div>
    <div class="wrap">
        <form action="attendance" method="POST">
            <table class="table table-striped">
                <input type="hidden" value="${param.lessonId}" name="lessonId">
                <thead>
                <tr>
                    <th style="color: #0e79d7;">No</th>
                    <th style="color: #0e79d7;">Group</th>
                    <th style="color: #0e79d7;">Code</th>
                    <th style="color: #0e79d7;">Name</th>
                    <th style="color: #0e79d7;">Image</th>
                    <th style="color: #0e79d7;">Status</th>
                    <th style="color: #0e79d7;">Comment</th>
                </tr>
                </thead>
                <tbody id="students">
                </tbody>
            </table>
            <div class="button">
                <span><button type="submit" class="btn btn-primary">Save</button></span>
                <span><button type="button" class="btn btn-outline-primary" onclick="attendanceClear()">Clear</button></span>
            </div>
        </form>
    </div>
</div>
<jsp:include page="../root/footer.jsp"/>
<script src="../js/teacher/attdendance.js"></script>
</body>
</html>
