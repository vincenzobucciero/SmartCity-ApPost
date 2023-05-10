<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 02/04/23
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="img/wallpaperCar.jpg" />
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/stylePrenotazione.css">
    <link rel="stylesheet" type="text/css" href="CSS/styleMap.css" />
    <link rel="stylesheet" href="CSS/styleListPark.css">

    <script type="module" src="js/scripts.js"></script>
    <script type="module" src="TySc/tyS.ts"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Prenotazioni</title>
</head>
<body>

<jsp:include page="NavBarUser.jsp" />

<header class="masthead">
    <div class="container">
        <div class="col-lg-10 mx-auto mb-4">
            <h2 class="text-center mt-0" style="color: white">Le tue prenotazioni</h2>
            <hr class="divider" style="max-width: 13rem"/>
        </div>
        <div class="row">
            <div class="col-sm-5">
                <div class="my-5 card bg-light mx-auto" style="width:60rem;">
                    <div class="card-body">
                        <!-- Qui inizia il div per la lista dei parcheggi-->
                        <div class="container mt-5" style="font-family: 'Inter', sans-serif">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="d-flex justify-content-between align-items-center activity">
                                        <div>
                                            <span class="activity-done">
                                                Prenotazioni(${list.size()})
                                            </span>
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <c:forEach items="${list}" var="record"> <!--Ciclo FOR -->
                                            <ul class="list list-inline">
                                                <li class="d-flex justify-content-between">
                                                    <div class="d-flex flex-row align-items-center">
                                                        <div class="ml-3"><!--ID Prenotazione-->
                                                            <h6 class="mb-0">
                                                                <td>
                                                                       ${record.getNomeParcheggio()}
                                                                </td>

                                                            </h6>
                                                            <div class="d-flex flex-row mt-1 text-black-50 date-time">
                                                            <span class="ml-2">

                                                                <c:choose>
                                                                    <c:when test="${record.getPagamento() == 'Al parcheggio'}">
                                                                        <i class="bi bi-exclamation-circle-fill" style="color: #da9b18"></i> Da pagare al parcheggio <br>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <i class='bi bi-check-circle-fill' style='color: #11cc11'></i> Pagato con successo <br>
                                                                    </c:otherwise>
                                                                </c:choose>

                                                                <i class="bi bi-calendar-check-fill" style="color: rgba(255,99,55,0.64)"></i><!--Data-->
                                                                    <td>
                                                                        ${record.getData_prenotazione()}
                                                                            <i class="bi bi-clock-fill"></i><!--Orario-->
                                                                                ${record.getOrario_inizio()} - ${record.getOrario_fine()}<br>
                                                                    </td>

                                                                <td style="text-transform: uppercase">
                                                                <c:choose>
                                                                    <c:when test="${record.getTipoVeicolo() == 'Auto'}">
                                                                        <i class="fas fa-car-side"></i>(${record.getTargaVeicolo()}) <i class="fas fa-coins" style="color: rgba(150,114,18,0.66)"></i> ${record.getPrezzo()}0€<br>
                                                                    </c:when>
                                                                    <c:when test="${record.getTipoVeicolo() == 'Moto'}">
                                                                        <i class="fas fa-motorcycle"></i>(${record.getTargaVeicolo()}) <i class="fas fa-coins" style="color: rgba(150,114,18,0.66)"></i> ${record.getPrezzo()}0€<br>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <i class="fas fa-truck"></i>(${record.getTargaVeicolo()}) <i class="fas fa-coins" style="color: rgba(150,114,18,0.66)"></i> ${record.getPrezzo()}0€<br>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                                </td>
                                                            </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex flex-row align-items-center">
                                                        <div class="d-flex flex-column mr-2">
                                                            <div class="profile-image">
                                                                <form action="DeleteBookingServlet" method="post">
                                                                    <div class="text-center">
                                                                        <input type="hidden" name="id" value="${record.getID_prenotazione()}">
                                                                        <input type="hidden" name="parkingBean" value="${parkingBean}">
                                                                        <input type="hidden" name="email" value="${email}">
                                                                        <button type="submit" class="btn btn-danger btn-sm "><i class="bi bi-trash"></i></button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Qui finisce il div per la lista dei parcheggi -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<header class="masthead"></header>

<!-- Footer-->
<jsp:include page="Footer.jsp" />

<!-- SimpleLightbox plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

<script>
    function confermaLogout() {
        return confirm("Sei sicuro di voler uscire?");
    }
</script>

</body>
</html>
