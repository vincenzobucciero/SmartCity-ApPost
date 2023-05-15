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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <!-- Core theme CSS (includes Bootstrap)-->

    <style>
        @keyframes move-right {
            from {
                transform: translateX(0);
            }
            to {
                transform: translateX(42px);
            }
        }

        .animate-right {
            animation: move-right 2s infinite;
        }

    </style>

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/stylePrenotazione.css">
    <link rel="stylesheet" type="text/css" href="CSS/styleMap.css" />
    <link rel="stylesheet" href="CSS/styleListPark.css">

    <script type="module" src="js/scripts.js"></script>
    <script type="module" src="TySc/tyS.ts"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Prenotazione</title>
</head>
<body>

<jsp:include page="NavBarUser.jsp" />

<header class="masthead">
    <div class="container">
        <div class="col-lg-10 mx-auto mb-4">
            <h2 class="text-center mt-0" style="color: white">Scegli dove parcheggiare</h2>
            <hr class="divider" style="max-width: 13rem;" />
        </div>
        <div class="row">
            <div class="col-sm-5">
                <div class="my-5 card bg-light mx-auto" style="width:60rem;">
                    <div class="card-body">
                        <div class="col-md-12 text-muted">
                            Ecco i parchggi disponibili per il percorso che hai scelto da ${start} a ${dest}:
                        </div>
                        <!-- Qui inizia il div per la lista dei parcheggi-->
                        <div class="container mt-5" style="font-family: 'Inter', sans-serif">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="d-flex justify-content-between align-items-center activity">
                                        <div>
                                            <span class="activity-done">
                                                Parcheggi(${parcheggioDisp.size()})
                                            </span>
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <c:forEach items="${parcheggioDisp}" var="record" varStatus="loop"> <!--Ciclo FOR -->
                                        <ul class="list list-inline">
                                            <li class="d-flex justify-content-between">
                                                <div class="d-flex flex-row align-items-center">
                                                    <div class="ml-3">
                                                        <h6 class="mb-0">
                                                            <td>
                                                                    <c:if test="${loop.first}">
                                                                        <span class="badge badge-success">  Il più vicino alla tua destinazione</span>
                                                                        <br>
                                                                    </c:if>
                                                                    ${record.getNomeParcheggio()}
                                                            </td>
                                                        </h6>
                                                        <div class="d-flex flex-row mt-1 text-black-50 date-time">
                                                            <span class="ml-2"> <!--22 May 2023-->
                                                                <i class="bi bi-geo-fill" style="color: #b60909"></i>
                                                                <td>
                                                                    ${record.getIndirizzo()}<br>
                                                                    <i class="fas fa-car-side"></i> Disponibilità totale: ${record.getPostiAuto()} <i class="bi bi-currency-exchange" style="color: rgba(159,159,36,0.78)"></i> ${record.getTariffaAF()}0€/h <br>
                                                                        <i class="fas fa-truck"></i> Disponibilità totale: ${record.getPostiFurgone()} <i class="bi bi-currency-exchange" style="color: rgba(159,159,36,0.78)"></i> ${record.getTariffaAF()}0€/h <br>
                                                                    <i class="fas fa-motorcycle"></i> Disponibilità totale: ${record.getPostiMoto()} <i class="bi bi-currency-exchange" style="color: rgba(159,159,36,0.78)"></i> ${record.getTariffaM()}0€/h
                                                                </td>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-row align-items-center">
                                                    <div class="d-flex flex-column mr-2">
                                                        <div class="profile-image">
                                                            <form action="BookingServlet" method="get">
                                                                <input type="hidden" name="nomeP" value="${record.getNomeParcheggio()}">
                                                                <input type="hidden" name="email" value="${userBean.getEmail()}">

                                                                <div class="text-center">
                                                                    <button type="submit" class="btn btn-primary btn-lg"><i class="fas fa-car-side animate-right"></i></button>
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

<script>
    const button = document.querySelector('.btn-primary');
    const div = document.querySelector('.text-center');

    button.addEventListener('click', () => {
        div.classList.add('animate-right');
    });
</script>

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
