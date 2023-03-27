<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 25/03/23
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>ApPost-Prenotazione</title>
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
<body>
<!-- Navbar-->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">ApPost</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <li class="nav-item"><a class="nav-link" href="userHomePage.jsp">Torna alla Home</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp">Esci</a></li>
            </ul>
        </div>
    </div>
</nav>

<header class="masthead">
    <div class="container px-4 px-lg-5 h-100">
        <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center"></div>
    </div>
</header>

<!-- Form-->
<div class="form-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-container">

                    <div class="form-icon"><i class="fa fa-user"></i></div> <!--2-->
                    <h3 class="title">
                        Effettua la tua<br>prenotazione
                    </h3>
                    <form class="form-horizontal" action="${pageContext.request.contextPath}/PrenotaServlet" method="post">
                        <!--Scelta dei parcheggi-->
                        <div class="form-group">
                            <label for="idParcheggio">Seleziona il parcheggio:</label>
                            <select class="form-control" id="idParcheggio" name="idParcheggio">
                                <option value="">Seleziona un parcheggio</option>
                                <c:forEach items="${list}" var="record">
                                    <option value="${record.getIdParcheggio()}">${parcheggio.getNomeParcheggio()}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <!-- Data-->
                        <div class="form-group">
                            <label for="dataInizio">Inserire il giorno</label>
                            <input type="date" class="form-control" id="dataInizio" name="dataInizio" required>
                        </div>
                        <!--Orario-->
                        <div class="form-group">
                            <label for="dataFine">Orario di arrivo:</label>
                            <input type="time" class="form-control" id="dataFine" name="dataFine" required>
                        </div>
                        <!--Targa-->
                        <div class="form-group">
                            <label for="targa">Targa:</label>
                            <input type="text" class="form-control" id="targa" name="targa" required>
                        </div>
                        <button type="submit" class="btn btn-primary">
                            Prenota
                        </button>

                    </form>


                </div> <!--2-->
            </div>
        </div>
    </div>
</div>
</div>


<!-- Footer-->
<footer class="bg-light py-5">
    <div class="container px-4 px-lg-5">
        <div class="small text-center text-muted">
            Copyright &copy; 2022 - Company Name
        </div>
    </div>
</footer>

</body>
</html>
