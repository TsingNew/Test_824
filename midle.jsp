<%@ page import="javax.xml.ws.Response" %><%--
  Created by IntelliJ IDEA.
  User: 嘉睿
  Date: 2017/8/23
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>TitleOnTheTop</title>
</head>
<body>
<jsp:useBean id="Comparer" class="DBCompare.CompareIn" scope="page"></jsp:useBean>
<%
    String use=request.getParameter("username");
    String pas=request.getParameter("password");

    boolean a=Comparer.doCompare(use,pas);
   if(a==true) {
       session.setAttribute("username",use);
      response.sendRedirect("login-index.jsp");
   }else{
       out.println("仍需努力！");
      response.sendRedirect("index.jsp");
   }
%>
</body>
</html>
