<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 18/03/23
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>ApPost-Modifica Dati Parcheggio</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="img/iconMoney.png" />
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
    <link rel="stylesheet" href="CSS/styleFormLogin.css">
    <link rel="stylesheet" href="img">
</head>
<body id="page-top">
<!-- Navigation-->
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
                        <form action="ShowParkingServlet" method="post">
                            <button class="dropdown-item" style="border-radius: 40px" href="PersonalServlet">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-p-square" viewBox="0 0 16 16">
                                    <path d="M5.5 4.002h2.962C10.045 4.002 11 5.104 11 6.586c0 1.494-.967 2.578-2.55 2.578H6.784V12H5.5V4.002Zm2.77 4.072c.893 0 1.419-.545 1.419-1.488s-.526-1.482-1.42-1.482H6.778v2.97H8.27Z"/>
                                    <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2Z"/>
                                </svg>
                                Parcheggi
                            </button>
                        </form>
                        <hr>
                        <!--Prenota-->
                        <a class="dropdown-item" style="border-radius: 40px" href="ChartsServlet">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bar-chart-line" viewBox="0 0 16 16">
                                <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z"/>
                            </svg>
                            Statistiche
                        </a>
                        <hr>
                        <!--Prenotazioni-->
                        <form action="ShowBookingServlet" method="post">
                            <input type="hidden" name="email" value="${email}">
                            <button class="dropdown-item" style="border-radius: 40px">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
                                    <path d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z"/>
                                    <path d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z"/>
                                </svg>
                                Prenotazioni
                            </button>
                        </form>
                        <hr>
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



<!-- Masthead-->
<header class="masthead">
    <div class="form-bg">
        <div class="container">
            <div class="row">
                <c:choose>
                    <c:when test="${parkingBean != null}">
                        <div class="col-md-4 col-md-offset-4">
                            <div class="form-container">
                                <h3 class="title">
                                    <svg fill="#ff6a00" height="100px" width="100px" style="position: center" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="-117.76 -117.76 747.53 747.53" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <g> <path d="M437.024,74.984c-8.331-8.331-21.839-8.331-30.17,0s-8.331,21.839,0,30.17c83.317,83.317,83.317,218.394,0.002,301.69 c-8.332,8.33-8.334,21.838-0.003,30.17c8.33,8.332,21.838,8.334,30.17,0.003C537.004,337.059,537.004,174.964,437.024,74.984z"></path> <path d="M105.153,105.165c8.332-8.33,8.334-21.838,0.003-30.17c-8.33-8.332-21.838-8.334-30.17-0.004 c-99.981,99.958-99.981,262.054-0.002,362.033c8.331,8.331,21.839,8.331,30.17,0c8.331-8.331,8.331-21.839,0-30.17 C21.838,323.538,21.838,188.46,105.153,105.165z"></path> <path d="M256.004,85.338c-94.257,0-170.667,76.41-170.667,170.667s76.41,170.667,170.667,170.667s170.667-76.41,170.667-170.667 S350.261,85.338,256.004,85.338z M256.004,384.004c-70.693,0-128-57.307-128-128s57.307-128,128-128s128,57.307,128,128 S326.697,384.004,256.004,384.004z"></path> <path d="M277.338,149.338h-42.667c-11.782,0-21.333,9.551-21.333,21.333v85.333v85.333c0,11.782,9.551,21.333,21.333,21.333 c11.782,0,21.333-9.551,21.333-21.333v-64h21.333c35.355,0,64-28.645,64-64S312.693,149.338,277.338,149.338z M277.338,234.671 h-21.333v-42.667h21.333c11.791,0,21.333,9.542,21.333,21.333S289.129,234.671,277.338,234.671z"></path> </g> </g> </g> </g></svg>
                                </h3>
                                <form class="form-horizontal" action="ModifyServlet" method="post">
                                    <div class="form-group row">
                                            <div class="col-md-4">
                                                <label name="nome">Nome parcheggio:</label>
                                                <input type="text" class="form-control text-muted" name="nome" value="${parkingBean.getNomeParcheggio()}" readonly><br />
                                            </div>
                                            <div class="col-md-4">
                                                <label name="indirizzo">Indirizzo:</label>
                                                <input type="text" class="form-control" name="indirizzo" value="${parkingBean.getIndirizzo()}"><br />
                                            </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label name="tariffaAF">Tariffa Auto/Furgone:</label>
                                            <input type="number" class="form-control" id="tariffaAF" name="tariffaAF" value="${parkingBean.getTariffaAF()}">
                                        </div>
                                        <div class="col-md-4">
                                            <label name="tariffaM">Tariffa Moto:</label>
                                            <input type="number" class="form-control" id="tariffaM" name="tariffaM" value="${parkingBean.getTariffaM()}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                            <div class="col-md-4">
                                                <label name="numPosti">Posti Auto:</label>
                                                <input type="postiAuto" class="form-control" id="postiAuto" name="postiAuto"value="${parkingBean.getPostiAuto()}">
                                            </div>
                                            <div class="col-md-4">
                                                <label name="numPosti">Posti Furgone:</label>
                                                <input type="postiFurgone" class="form-control" id="postiFurgone" name="postiFurgone"value="${parkingBean.getPostiFurgone()}">
                                            </div>
                                            <div class="col-md-4">
                                                <label name="numPosti">Posti Moto:</label>
                                                <input type="postiMoto" class="form-control" id="postiMoto" name="postiMoto"value="${parkingBean.getPostiMoto()}">
                                            </div>
                                    </div>
                                    <input type="hidden" name="nomeparking" value="${parkingBean.getNomeParcheggio()}" >
                                    <button  type="submit" class="btn btn-primary btn-lg text-light "> Modifica </button>
                                </form>

                            </div>
                        </div>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
</header>

<!-- Footer-->
<footer class="bg-light py-5">
    <div class="container px-4 px-lg-5">
        <div class="small text-center text-muted">
            Copyright &copy; 2023 - ApPost
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

<script>
    function confermaLogout() {
        return confirm("Sei sicuro di voler uscire?");
    }
</script>

</body>
</html>

