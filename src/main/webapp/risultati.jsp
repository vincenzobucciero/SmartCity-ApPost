<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 02/04/23
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<h4>Ciaooooo</h4>

<header>
    <div class="row"> <!-- Inizio Card-->
        <c:forEach items="${parcheggioDisp}" var="parcheggioDisp">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">${parcheggioDisp.getNomeParcheggio()}</h5>
                    <p class="card-text">${parcheggioDisp.getIndirizzo()}</p>
                    <p class="card-text">${parcheggioDisp.getNumPosti()}</p>
                </div>
            </div>
        </c:forEach>
    </div>
    </div><!-- FINE SEZIONE CARD-->
</header>
</body>
</html>
