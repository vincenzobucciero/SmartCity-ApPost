<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 22/03/23
  Time: 16:27
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
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="img">

    <!-- API Google Maps-->
    <title>ApPost - My Home</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" type="text/css" href="CSS/styleMap.css" />
    <script type="module" src="js/jsMap.js"></script>

</head>

<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">ApPost</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <!--HomePage-->
                <li class="nav-item">
                    <a class="nav-link" href="homepage">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
                            <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146ZM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5Z"/>
                        </svg>
                    </a>
                </li>
                <li class="nav-item dropdown" style="font-family: 'Inter'">
                    <a class="nav-link " id="navbarDropdownExit" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                        </svg>
                    </a>

                    <div class="dropdown-menu" style="border-radius: 30px" aria-labelledby="navbarDropdownExit">
                        <!--Omino-->
                        <a class="dropdown-item" style="border-radius: 40px" href="PersonalServlet">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                            </svg>
                            Profilo</a>
                        <!--Prenota-->
                        <a class="dropdown-item" style="border-radius: 40px" href="SearchServlet">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
                                <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                            </svg>
                            Prenota
                        </a>
                        <!--Prenotazioni-->
                        <form action="ShowBookingServlet" method="post">
                            <input type="hidden" name="email" value="${email}">
                        <button class="dropdown-item" style="border-radius: 40px" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                            </svg>
                            Prenotazioni
                        </button>
                        </form>
                        <hr />
                        <!--Parcheggi-->
                        <a class="dropdown-item" style="border-radius: 40px" href="#parcheggi">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-p-circle" viewBox="0 0 16 16">
                                <path d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8Zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002h2.962C10.045 4.002 11 5.104 11 6.586c0 1.494-.967 2.578-2.55 2.578H6.784V12H5.5V4.002Zm2.77 4.072c.893 0 1.419-.545 1.419-1.488s-.526-1.482-1.42-1.482H6.778v2.97H8.27Z"/>
                            </svg>
                            Dove siamo
                        </a>
                        <!--Aiuto-->
                        <a class="dropdown-item" style="border-radius: 40px" href="aiuto">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
                            </svg>
                            Aiuto
                        </a>
                        <!--Esci-->
                        <a class="dropdown-item" style="color: rgb(182,9,9); border-radius: 40px" href="logout" onclick="return confermaLogout()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                                <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                            </svg>
                            Esci
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Inizio MasterHead-->
<header class="masthead">
    <div class="container">
        <div class="col-lg-10 mx-auto mb-4">
            <h2 class="text-center mt-0" style="color: white">Bentornato,
                <c:choose>
                    <c:when test="${userBean != null}">
                        ${userBean.getNome()}
                    </c:when>
                </c:choose>
            </h2>
            <hr class="divider" />
        </div>

    </div>
    <!--INIZIO SEZIONE CARD-->
    <div class="row">
        <!-- Inizio Prima Card-->
        <div class="my-3 card bg-light" style="width: 20rem; height: 30rem" id="personal">
            <img style="border-radius: 2.3rem" src="img/imgCard/personalData.jpg">
            <div class="card-body">
                <h4 class="card-title">Dati personali</h4>
                <p class="card-text">Qui vengono visualizzati i dati personali di </p>
                <p>
                    <c:choose>
                    <c:when test="${userBean != null}">
                <p class="text-muted mb-0">
                        ${userBean.getNome()}
                        ${userBean.getCognome()}
                </p>
                </c:when>
                </c:choose>
                </p>
                <div class="text-center">
                    <a href="PersonalServlet" style="border-radius: 20px" class="btn btn-outline-primary">Visualizza i tuoi dati</a>
                </div>
            </div>
        </div><!-- Fine Prima Card-->

        <!-- Inizio Seconda Card-->
        <div class="my-3 card bg-light mx-auto" style="width: 20rem;height: 30rem" id="prenota">
            <img style="border-radius: 2.3rem" src="img/park6.jpg">
            <div class="card-body">
                <h4 class="card-title">Prenota</h4>
                <p class="card-text">Qui puoi effettuare una nuova prenotazione in uno dei nostri parcheggi.</p><br>
                <div class="text-center">
                    <a href="SearchServlet" style="border-radius: 20px" class="btn btn-outline-primary text-center">Effettua una prenotazione</a>
                </div>
            </div>
        </div><!-- Fine Seconda Card-->

        <!-- Inizio Terza Card-->
        <div class="my-3 card bg-light" style="width: 20rem;height: 30rem" id="booking">
            <img style="border-radius: 2.3rem" src="img/imgCard/prenotazione.jpg">
            <div class="card-body">
                <h4 class="card-title">Le mie prenotazioni</h4>
                <p class="card-text">Qui vengono visualizzate le prenotazioni effettuate,
                    con informazioni come data orario e luogo.</p>
                <form action="ShowBookingServlet" method="post">
                    <input type="hidden" name="email" value="${email}">
                    <button class="btn btn-outline-primary text-center" style="border-radius: 20px">Visualizza prenotazioni</button>
                </form>
            </div>
        </div><!-- Fine Terza Card-->

    </div><!-- FINE SEZIONE CARD-->

</header> <!-- Fine MasterHead-->

<!--Mappa-->
<section class="page-section" style="padding: 2rem" id="parcheggi">
    <h2 class="text-center mt-0" style="color: #000000">I nostri parcheggi
    </h2>
    <hr class="divider" />
    <div class="my-3 card bg-light mx-auto" style="width:60rem;">
        <div class="card">
            <div class="card-body">
                <p class="text-muted mb-0">Visualizza dove sono situati i nostri parcheggi</p>
                <!--The div element for the map -->
                <div id="map"></div> <!-- Qua esce la mappa-->
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-light py-5">
    <div class="container px-4 px-lg-5">
        <div class="row">
            <div class="col-lg-6">
                <h5>Contattaci</h5>
                <ul class="list-unstyled">
                    <li><i class="bi bi-pin-map"></i> Via Carlo III, n.70 - 80081 Napoli (NA)</li>
                    <li><i class="bi bi-telephone"></i> +39 06 12345678</li>
                    <li><i class="bi bi-envelope"></i> info@appost.com</li>
                </ul>
            </div>
            <div class="col-lg-6 text-right">
                <h5>Social</h5>
                <ul class="list-unstyled">
                    <li><a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                    </svg> Facebook</a>
                    </li>
                    <li><a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                        <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg> Twitter</a>
                    </li>
                    <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
                    </svg> Instagram</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="small text-center text-muted mt-3">
            &copy; 2023 - ApPost
        </div>
    </div>
</footer>


<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- SimpleLightbox plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

<!--L'attributo defer fa sì che la funzione di callback venga eseguita
       dopo che l'intero documento HTML è stato analizzato. Per utilizzi non
       bloccanti, evitando condizioni di gara e comportamenti coerenti tra
       browser, considera il caricamento tramite Promises con
       https://www.npmjs.com/package/@googlemaps/js-api-loader.-->

<!--Qui importiamo lo script di google maps dove però
    andiamo a modificare la chiave API che abbiamo generato -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA23kxKNlGB1Gw7UQdz4zbemqIZSG93JUQ&callback=initMap">
</script>

<!--Conferma logout-->
<script>
    function confermaLogout() {
        return confirm("Sei sicuro di voler uscire?");
    }
</script>

</body>
</html>