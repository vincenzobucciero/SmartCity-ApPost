<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 19/03/23
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>ApPost-Home Page</title>
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- SimpleLightbox plugin CSS-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="CSS/styleAdmin.css">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="img">

</head>
<body id="page-top">
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
            <div class="row">
                <div class="col-lg-10 mx-auto mb-4">
                    <h2 class="text-center mt-0" style="color: white">Gestisci i tuoi parcheggi</h2>
                    <hr class="divider" />
                </div>
            </div>

            <div class="row">
                <div class="col-lg-10 mx-auto">
                    <div class="career-search mb-60">

                        <form action="#" class="career-form mb-60" style="font-family: 'Inter', sans-serif">
                            <div class="row">
                                <div class="col-md-6 col-lg-3 my-3">
                                    <div class="input-group position-relative">
                                        <input type="text" class="form-control" placeholder="Cerca parcheggio" id="keywords">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-3">
                                    <div class="select-container">
                                        <select class="custom-select">
                                            <option selected="">--Seleziona--</option>
                                            <option value="1">...</option>
                                            <option value="2">...</option>
                                            <option value="3">...</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-3">
                                    <button type="button" class="btn btn-lg btn-block btn-light btn-custom" id="contact-submit">
                                        Cerca
                                    </button>
                                </div>
                            </div>
                        </form>

                        <div class="filter-result">
                            <p class="mb-30 ff-montserrat" style="color:#ffffff;">Parcheggi (${list.size()})</p>
                            <div class="row">
                            <c:forEach items="${list}" var="record"> <!--Ciclo FOR -->
                            <div class="job-box bg-white d-md-flex align-items-center justify-content-between mb-30">
                                <div class="job-left my-4 d-md-flex align-items-center flex-wrap">
                                    <div class="img-holder mr-md-4 mb-md-0 mb-4 mx-auto mx-md-0 d-md-none d-lg-flex">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" style="color: #f4623a" fill="currentColor" class="bi bi-car-front-fill" viewBox="0 0 16 16">
                                            <path d="M2.52 3.515A2.5 2.5 0 0 1 4.82 2h6.362c1 0 1.904.596 2.298 1.515l.792
                                            1.848c.075.175.21.319.38.404.5.25.855.715.965 1.262l.335 1.679c.033.161.049.325.049.49v.413c0 .814-.39
                                            1.543-1 1.997V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.338c-1.292.048-2.745.088-4 .088s-2.708-.04-4-.088V13.5a.5.5 0 0
                                            1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.892c-.61-.454-1-1.183-1-1.997v-.413a2.5 2.5 0 0 1 .049-.49l.335-1.68c.11-.546.465-1.012.964-1.261a.807.807
                                            0 0 0 .381-.404l.792-1.848ZM3 10a1 1 0 1 0 0-2 1 1 0 0 0 0 2Zm10 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2ZM6 8a1 1 0 0 0 0 2h4a1 1 0 1 0 0-2H6ZM2.906
                                            5.189a.51.51 0 0 0 .497.731c.91-.073 3.35-.17 4.597-.17 1.247 0 3.688.097 4.597.17a.51.51 0 0 0 .497-.731l-.956-1.913A.5.5 0 0 0 11.691 3H4.309a.5.5 0 0 0-.447.276L2.906 5.19Z"/>
                                        </svg>
                                    </div>
                                        <div class="job-content" style="font-family: 'Inter', sans-serif">
                                            <h5 class="text-center text-md-left">
                                                <td>
                                                    ${record.getNomeParcheggio()}
                                                </td>
                                            </h5>
                                            <ul class="d-md-flex flex-wrap text-capitalize ff-open-sans">
                                                <li class="mr-md-4">
                                                    <i class="bi bi-geo-fill" style="color: #b60909"></i> ${record.getIndirizzo()}
                                                </li>
                                                <li class="mr-md-4">
                                                    <i class="fas fa-car-side"></i> ${record.getPostiAuto()}
                                                </li>
                                                <li class="mr-md-4">
                                                    <i class="fas fa-truck"></i> ${record.getPostiFurgone()}
                                                </li>
                                                <li class="mr-md-4">
                                                    <i class="fas fa-motorcycle"></i> ${record.getPostiMoto()}
                                                </li>
                                            </ul>
                                        </div>
                                    <form action="InfoParkingServlet" method="post">
                                        <input type="hidden" name="nomeparking" value="${record.getNomeParcheggio()}">
                                        <div class="job-right my-4 flex-shrink-0">
                                            <button type="submit" class="btn d-block w-100 d-sm-inline-block btn-primary">Modifca</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>

                    <!-- START Pagination -->
                    <nav aria-label="Page navigation">
                        <ul class="pagination pagination-reset justify-content-center">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                                    <i class="zmdi zmdi-long-arrow-left"></i>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item d-none d-md-inline-block"><a class="page-link" href="#">2</a></li>
                            <li class="page-item d-none d-md-inline-block"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">...</a></li>
                            <li class="page-item"><a class="page-link" href="#">8</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    <i class="zmdi zmdi-long-arrow-right"></i>
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <!-- END Pagination -->
                </div>
            </div>
        </div>
</header>



<section class="page-section" id="statistiche">
    <div class="col-lg-10 mx-auto mb-4">
        <h2 class="text-center mt-0" style="color: black">Statistiche</h2>
        <hr class="divider" />
    </div>
</section>

<!-- Footer-->
<footer class="bg-light py-5">
    <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2023 - ApPost</div></div>
</footer>

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- SimpleLightbox plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
<!-- Core theme JS-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

<script src="js/scripts.js"></script>

</body>
</html>
