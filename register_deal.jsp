<%--
  Created by IntelliJ IDEA.
  User: 李普
  Date: 2017/8/23
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="Connector" scope="page" class="ConnectDB.Connector"></jsp:useBean>
<%
    String name = request.getParameter("username");
    String pw = request.getParameter("pw");
    Connector.Register(name,pw);
    session.setAttribute("username",name);
    response.sendRedirect("applymember.jsp");
%>
</body>
</html>
