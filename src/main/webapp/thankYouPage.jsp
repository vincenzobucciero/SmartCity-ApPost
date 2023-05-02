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
    <link rel="stylesheet" href="CSS/styleThanks.css">

    <script type="module" src="js/scripts.js"></script>
    <script type="module" src="TySc/tyS.ts"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Thanks</title>
</head>

<body>

<!--Navigation-->
<jsp:include page="NavBarUser.jsp" />

<!--Masthead-->
<header class="masthead">
    <div class="border border-3 border-success"></div>
    <div class="card  bg-white shadow p-5">
        <div class="mb-4 text-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="75" height="75" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
            </svg>
        </div>
        <div class="text-center">
            <h1>Prenotazione Effettuata</h1>
            <p>Grazie per averci scelto, puoi visualizzare le tue prenotazioni nella sezione dedicata,
                inoltre puoi effettuare una nuova prenotazione.</p>
            <button class="btn btn-outline-success" href="findPath.jsp">Nuova prenotazione</button>

            <div>
                <form action="ShowBookingServlet" method="post">
                    <input type="hidden" name="email" value="${email}">
                    <input type="hidden" name="bookingBean" value="${bookingBean}">

                    <div class="text-center">
                        <button class="btn btn-outline-success">Visualizza prenotazioni</button>
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
