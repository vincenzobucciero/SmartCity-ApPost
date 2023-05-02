<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 05/04/23
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

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
    <link rel="stylesheet" href="CSS/styleError.css">


    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Errore Pagamento</title>
</head>

<body>

<!--Navigation-->
<jsp:include page="NavBarUser.jsp" />

<!--Masthead-->
<header class="masthead">
    <div class="border border-3 border-success"></div>
    <div class="card  bg-white shadow p-5">
        <div class="mb-4 text-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="75" height="75" fill="currentColor" class="bi bi-exclamation-triangle-fill" viewBox="0 0 16 16">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
            </svg>
        </div>
        <div class="text-center">
            <h1>Ops, c'e stato un errore</h1>
            <p>Ci scusiamo per il disagio, ma ci risulta essersi verificato un errore, la preghiamo di riprovare</p>
            <div>
                <form action="SearchServlet" method="get">
                    <input type="hidden" name="email" value="${email}">
                    <div class="text-center">
                        <button class="btn btn-outline-danger">Nuova prenotazione</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</header>


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
