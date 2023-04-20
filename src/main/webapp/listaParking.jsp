<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 18/04/23
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>ApPost-Parcheggi</title>
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- SimpleLightbox plugin CSS-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="CSS/styleAdmin.css">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="img"></head>
<body>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">ApPost</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <li class="nav-item"><a class="nav-link" href="adminHomePage.jsp">Torna alla home</a></li>
                <li class="nav-item"><a class="nav-link" href="#statistiche">Statistiche</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Esci</a></li>
            </ul>
        </div>
    </div>
</nav>

    <!-- Masthead-->
    <header class="masthead">
        <div class="container">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-10 mx-auto mb-3">
                    <h2 class="text-center mt-0" style="color: white">Gestisci i tuoi parcheggi</h2>
                    <hr class="divider" />
                </div>
            </div>
            <!-- DataTales -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Parcheggi </h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" style="font-family: 'Inter', sans-serif" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Indirizzo</th>
                                <th>Posti Auto</th>
                                <th>Posti Furgone</th>
                                <th>Posti Moto</th>
                                <th>Tariffa Auto</th>
                                <th>Tariffa Furgone</th>
                                <th>Tariffa Moto</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="record" items="${list}">
                                <tr>
                                    <td>${record.getNomeParcheggio()}</td>
                                    <td>${record.getIndirizzo()}</td>
                                    <td>${record.getPostiAuto()}</td>
                                    <td>${record.getPostiFurgone()}</td>
                                    <td>${record.getPostiMoto()}</td>
                                    <td>${record.getTariffaAF()}€</td>
                                    <td>${record.getTariffaAF()}€</td>
                                    <td>${record.getTariffaM()}€</td>
                                    <form action="ModifyServlet" method="post">
                                        <td>
                                            <form action="InfoParkingServlet" method="post">
                                                <input type="hidden" name="nomeparking" value="${record.getNomeParcheggio()}">
                                                    <button type="submit" class="btn btn-primary btn-icon-split">Modifca</button>
                                            </form>
                                        </td>
                                    </form>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </header>


<!-- Footer-->
<footer class="bg-light py-5">
    <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2023 - ApPost</div></div>
</footer>


</body>
</html>
