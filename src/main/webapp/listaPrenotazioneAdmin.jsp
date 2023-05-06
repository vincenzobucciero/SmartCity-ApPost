<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 26/04/23
  Time: 10:20
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
    <title>ApPost-Prenotazioni</title>
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- SimpleLightbox plugin CSS-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <style>
        <%@include file="vendor/datatables/dataTables.bootstrap4.css"%>
        .sorting_asc{
            color: #f4623a !important;
        }

        table.dataTable > thead .sorting:before, table.dataTable > thead .sorting:after, table.dataTable > thead .sorting_asc:before, table.dataTable > thead .sorting_asc:after, table.dataTable > thead .sorting_desc:before, table.dataTable > thead .sorting_desc:after, table.dataTable > thead .sorting_asc_disabled:before, table.dataTable > thead .sorting_asc_disabled:after, table.dataTable > thead .sorting_desc_disabled:before, table.dataTable > thead .sorting_desc_disabled:after {
            position: absolute;
            bottom: 0.5em!important;
            display: none;
            opacity: 0.3;
        }

        table.dataTable > thead .sorting:before, table.dataTable > thead .sorting_asc:before, table.dataTable > thead .sorting_desc:before, table.dataTable > thead .sorting_asc_disabled:before, table.dataTable > thead .sorting_desc_disabled:before {
            right: 0.5em;
            content: ""!important;
        }

        table.dataTable > thead .sorting:after, table.dataTable > thead .sorting_asc:after, table.dataTable > thead .sorting_desc:after, table.dataTable > thead .sorting_asc_disabled:after, table.dataTable > thead .sorting_desc_disabled:after {
            right: 0.5em;
            content: ""!important;
        }

        div.dataTables_wrapper div.dataTables_length select {
            width: 3.5rem;
            display: inline-block;
        }
    </style>


    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="img"></head>

<body>
<!-- Navigation-->
<jsp:include page="NavBarAdmin.jsp" />

<!-- Masthead-->
<header class="masthead">
    <div class="container">
        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-10 mx-auto mb-3">
                <h2 class="text-center mt-0" style="color: white">Prenotazioni Totali</h2>
                <hr class="divider"/>
            </div>
            </h4>
        </div>
        <!-- DataTales -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Prenotazioni</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" style="width: 100%">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Email</th>
                            <th>Parcheggio</th>
                            <th>Veicolo</th>
                            <th>Data</th>
                            <th>Orario</th>
                            <th>Prezzo</th>
                            <th>Pagamento</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="record" items="${list1}">
                            <tr>
                                <td style="font-weight: bold">${record.getID_prenotazione()}</td>
                                <td style="font-weight: lighter">${record.getEmail()}</td>
                                <td>${record.getNomeParcheggio()}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${record.getTipoVeicolo() == 'Auto'}">
                                            <i class="fas fa-car-side"></i>(${record.getTargaVeicolo()})
                                        </c:when>
                                        <c:when test="${record.getTipoVeicolo() == 'Moto'}">
                                            <i class="fas fa-motorcycle"></i>(${record.getTargaVeicolo()})
                                        </c:when>
                                        <c:otherwise>
                                            <i class="fas fa-truck"></i>(${record.getTargaVeicolo()})
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>${record.getData_prenotazione()}</td>
                                <td>${record.getOrario_inizio()}-${record.getOrario_fine()}</td>
                                <td>${record.getPrezzo()}0€</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${record.getPagamento() == 'Al parcheggio'}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-p-circle" viewBox="0 0 16 16">
                                                <path d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8Zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002h2.962C10.045 4.002 11 5.104 11 6.586c0 1.494-.967 2.578-2.55 2.578H6.784V12H5.5V4.002Zm2.77 4.072c.893 0 1.419-.545 1.419-1.488s-.526-1.482-1.42-1.482H6.778v2.97H8.27Z"/>
                                            </svg>
                                        </c:when>
                                        <c:otherwise>
                                            <i class="bi bi-credit-card-2-back"></i> /
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-paypal" viewBox="0 0 16 16">
                                                <path d="M14.06 3.713c.12-1.071-.093-1.832-.702-2.526C12.628.356 11.312 0 9.626 0H4.734a.7.7 0 0 0-.691.59L2.005 13.509a.42.42 0 0 0 .415.486h2.756l-.202 1.28a.628.628 0 0 0 .62.726H8.14c.429 0 .793-.31.862-.731l.025-.13.48-3.043.03-.164.001-.007a.351.351 0 0 1 .348-.297h.38c1.266 0 2.425-.256 3.345-.91.379-.27.712-.603.993-1.005a4.942 4.942 0 0 0 .88-2.195c.242-1.246.13-2.356-.57-3.154a2.687 2.687 0 0 0-.76-.59l-.094-.061ZM6.543 8.82a.695.695 0 0 1 .321-.079H8.3c2.82 0 5.027-1.144 5.672-4.456l.003-.016c.217.124.4.27.548.438.546.623.679 1.535.45 2.71-.272 1.397-.866 2.307-1.663 2.874-.802.57-1.842.815-3.043.815h-.38a.873.873 0 0 0-.863.734l-.03.164-.48 3.043-.024.13-.001.004a.352.352 0 0 1-.348.296H5.595a.106.106 0 0 1-.105-.123l.208-1.32.845-5.214Z"/>
                                            </svg>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td style="color: red"><i class="bi bi-trash-fill"></i></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</header>

<header class="masthead">

</header>

<!-- Footer-->
<jsp:include page="Footer.jsp" />

<!-- Bootstrap core JavaScript-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>

<!-- Custom scripts for all pages-->
<script><%@include file="js/sb-admin-2.js"%></script>

<!-- Core plugin JavaScript-->
<script><%@include file="vendor/jquery-easing/jquery.easing.min.js"%></script>


<!-- Page level plugins -->
<script><%@include file="vendor/datatables/jquery.dataTables.min.js"%></script>
<script><%@include file="vendor/datatables/dataTables.bootstrap4.min.js"%></script>

<!-- Page level custom scripts -->
<script><%@include file="js/demo/datatables-demo.js"%></script>

<script>
    function confermaLogout() {
        return confirm("Sei sicuro di voler uscire?");
    }
</script>

</body>
</html>
