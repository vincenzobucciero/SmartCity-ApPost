<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 30/03/23
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="CSS/styleFormLogin.css">
    <link rel="stylesheet" type="text/css" href="CSS/styleMap.css" />
    <script type="module" src="js/jsMap.js"></script>
    <script type="module" src="TySc/tyS.ts"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Prenotazione</title>

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
      <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">ApPost</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto my-2 my-lg-0">
            <li class="nav-item"><a class="nav-link" href="userHomePage.jsp">Torna alla Home</a></li>
            <li class="nav-item"><a class="nav-link" href="logout">Esci</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Inizio MasterHead-->
    <header class="masthead">
      <div class="form-bg">
        <div class="container">
            <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-container">
                    <h3 class="title">
                        Ricerca il parcheggio<br>
                        più vicino a te
                    </h3>
                    <form class="form-horizontal" action="/searchServlet" method="post">
                        <div class="form-group">
                            <div class="input-group">
                                <label name="indStart"><i class="fa fa-search"></i></label>
                                <input type="text" class="form-control" name="indStart" placeholder="Partenza" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <label name="indEnd"><i class="fa fa-search"></i></label>
                                <input type="text" class="form-control" name="indEnd" placeholder="Destinazione" required>
                            </div>
                        </div>
                        <input type="hidden" name="id">
                        <button type="submit" class="btn btn-primary btn-lg ">Cerca Percorso</button>
                    </form>
            </div>
            </div> <!-- Fine Prima Card-->
          </div>
        </div>
      </div>
    </header>



    <!--Footer-->
    <!-- Footer-->
    <footer class="bg-light py-5">
      <div class="container px-4 px-lg-5">
        <div class="small text-center text-muted">
          Copyright &copy; 2023 - Company Name
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


</body>
</html>
