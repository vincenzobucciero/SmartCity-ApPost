<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 02/04/23
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<h4>Ciaooooo</h4>
<div class="row"> <!-- Inizio Card-->
    <c:forEach items="${parcheggioDisp}" var="record"> <!--Ciclo FOR -->
        <div class="my-4 card bg-light mx-auto" style="width: 20rem;">
            <div class="card-body">
                <p class="text-muted mb-0 fs-3">
                <td>
                        ${record.getNomeParcheggio()}
                </td>
                <hr class="text-black">
                </p><!-- Fine Nome Parcheggio-->
                <h5 class="card-text-">
                    <p class="text-black">
                    <td>
                            ${record.getIndirizzo()}<br>
                        Numero Posti: ${record.getNumPosti()}
                    </td>
                    </p>
                </h5> <!-- Fine Indirizzo&NumPosti-->

            </div>
        </div><!-- Fine Card-->
    </c:forEach>
</div>

</body>
</html>
