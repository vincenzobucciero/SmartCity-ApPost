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
        <c:forEach items="${parcheggioDisp}" var="parcheggioDisp"> <!--Ciclo FOR -->
            <div class="my-4 card bg-light mx-auto" style="width: 20rem;">
                <div class="card-body">
                    <p class="text-muted mb-0 fs-3">
                    <td>
                            ${parcheggioDisp.getNomeParcheggio()}
                    </td>
                    <hr class="text-black">
                    </p><!-- Fine Nome Parcheggio-->
                </div>
            </div><!-- Fine Card-->
        </c:forEach>
    </div>
    </div><!-- FINE SEZIONE CARD-->
</header>
</body>
</html>
