<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 01/04/23
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <h1>Hello,world</h1>

    <%
        String st = null;
        if (session.getAttribute("st") == null)
            response.sendRedirect("login.jsp");
        else
            st = (String) session.getAttribute("st");
    %>

        <%
            String ed = null;
            if (session.getAttribute("ed") == null)
                response.sendRedirect("login.jsp");
            else
                ed = (String) session.getAttribute("ed");
        %>

<h3>
    Il percorso scelto è da ${st} a ${ed}
</h3>
</body>
</html>
