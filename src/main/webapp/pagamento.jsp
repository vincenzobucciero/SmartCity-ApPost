<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 4/4/23
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <link rel="icon" type="image/x-icon" href="img/wallpaperCar.jpg" />
    <!-- Bootstrap Icons-->
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <meta charset="UTF-8">
    <!-- This script got from frontendfreecode.com -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="CSS/stylePay.css">
    <link rel="stylesheet" href="CSS/style.css">
    <script type="module" src="js/jsPay.js"></script>

    <style>
        .btn-group-vertical>.btn:not(:first-child),
        .btn-group-vertical>.btn-group:not(:first-child) {
            margin-top: 0;
        }
    </style>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Pagamento</title>

</head>
<body>

<!-- Navigation-->
<jsp:include page="NavBarUser.jsp" />

<!-- Masthead-->
<header class="masthead">
    <div class="col-lg-10 mx-auto mb-4">
        <h2 class="text-center mt-0" style="color: white">Scegli come pagare</h2>
        <hr class="divider" style="max-width: 10rem" />
    </div>
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                            <li class="nav-item">
                                <a data-toggle="pill" href="#credit-card" class="nav-link active"> <i class="fas fa-credit-card mr-2"></i> Carta di Credito </a>
                            </li>
                            <li class="nav-item">
                                <a data-toggle="pill" href="#paypal" class="nav-link"> <i class="fab fa-paypal mr-2"></i> Paypal </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End -->
                    <!-- Credit card form content -->
                    <div class="tab-content">
                        <!-- credit card info-->
                        <div id="credit-card" class="tab-pane fade show active pt-3">
                            <form action="PayServlet" method="post">
                                <div class="form-group">
                                    <label name="username"> <!--Intestatario-->
                                        <h6>Intestatario Carta</h6>
                                    </label>
                                    <input type="text" name="intestatario" placeholder="Mario Rossi" style="text-transform: uppercase" required class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label name="cardNumber"><!--Numero Carta-->
                                        <h6>Numero Carta</h6>
                                    </label>
                                    <div class="input-group">
                                        <input type="text" name="numCarta" placeholder="5136 1845 5468 3894" oninput="inputHandler(this)" class="form-control" required maxlength="19" />
                                        <div class="input-group-append">
                                            <span class="input-group-text text-muted">
                                                <i class="fab fa-cc-visa mx-1"></i>
                                                <i class="fab fa-cc-mastercard mx-1"></i>
                                                <i class="fab fa-cc-amex mx-1"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <label>
                                            <span class="hidden-xs"><!--Data di Scadenza-->
                                                <h6>Data Scadenza</h6>
                                            </span>
                                        </label>
                                        <div class="input-group-prepend">
                                            <input type="number" placeholder="MM" name="MM" class="form-control" value="1" min="1" max="12" required />
                                            <input type="number" placeholder="YY" name="YYYY" class="form-control" value="23" min="23" max="30" required />
                                        </div>
                                    </div>

                                    <div class="form-group col-sm-3"> <!--CVV-->
                                        <label data-toggle="tooltip" title="Trovi il codice CVV a tre cifre sul retro della carta">
                                            <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                        </label>
                                        <input type="password" name="cvv" required class="form-control" maxlength="3" />
                                    </div>
                                </div>

                                <div class="card-footer"> <!--Conferma Pagamento-->
                                    <input type="hidden" name="bookingBean" value="${bookingBean}">
                                    <input type="hidden" name="email" value="${email}">
                                    <input type="hidden" name="nomeP" value="${nomeP}">
                                    <button type="submit" class="subscribe btn btn-primary btn-block shadow-sm">
                                        Conferma Pagamento
                                    </button>
                                </div>
                            </form>
                        </div>
                        <!-- End -->


                        <!-- Paypal info -->
                        <div id="paypal" class="tab-pane fade pt-3">
                            <form action="PayPalServlet" method="post">
                                <div class="form-group">
                                    <label name="emailPP">
                                        <h6>Email</h6>
                                    </label>
                                    <input type="text" name="emailPP" placeholder="mariorossi@gmail.com" required class="form-control"  />
                                </div>
                                <div class="form-group">
                                    <label name="passwordPP">
                                        <h6>Password</h6>
                                    </label>
                                    <input type="password" name="passwordPP" required class="form-control" />
                                </div>
                                <p>
                                    <input type="hidden" name="bookingBean" value="${bookingBean}">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fab fa-paypal mr-2"></i>
                                        Accedi in Paypal
                                    </button>
                                </p>
                                <p class="text-muted">
                                    Nota: dopo aver fatto clic sul pulsante, completerai l'acquisto sul tuo account PayPal. Dopo aver completato il processo di pagamento,
                                    verrai reindirizzato al nostro sito Web per visualizzare i dettagli del tuo ordine.
                                </p>
                            </form>
                        </div>
                        <!-- End -->
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4 mx-lg-4" style="padding: 2.5rem">
            <div class="p-3" style="background-color: #ffffff;">
                <span class="fw-bold" style="color: #F4623AFF">Riepilogo dell'ordine</span>
                <hr />
                <div class="d-flex justify-content-between mt-2">
                    <c:choose>
                    <c:when test="${bookingBean != null}">
                    <span class="bold">Parcheggio</span>
                    <span class="fst-italic">${bookingBean.getNomeParcheggio()}</span>
                </div>
                <hr />
                <div class="d-flex justify-content-between mt-2">
                    <span class="bold">Data</span> <span class="fst-italic">${bookingBean.getData_prenotazione()}</span>
                </div>
                <div class="d-flex justify-content-between mt-2">
                    <span class="bold">Ore prenotazione</span> <span class="fst-italic"> ${bookingBean.getOrario_inizio()} - ${bookingBean.getOrario_fine()}</span>
                </div>
                <hr />

                <div class="d-flex justify-content-between mt-2">
                    <span class="bold">Commissioni</span> <span class="text-muted">1.50€</span>
                </div>
                <div class="d-flex justify-content-between mt-2">
                    <span class="bold">Prezzo prenotazione</span> <span>${bookingBean.getPrezzo()}0€</span>
                </div>
                <hr />
                <div class="d-flex justify-content-between mt-2">
                    <span class="bold">Totale </span> <span class="text-primary bold">${bookingBean.getPrezzo() + 1.50}0€</span>
                </div>
                </c:when>
                </c:choose>
            </div>
        </div>

    </div>
</header>

<!-- Footer-->
<jsp:include page="Footer.jsp" />


<script>
    function inputHandler(input) {
        // Rimuove tutti i caratteri non numerici dalla stringa
        input.value = input.value.replace(/\D/g, '');
        // Limita la lunghezza della stringa a 16 cifre
        input.value = input.value.slice(0, 16);
        // Aggiunge uno spazio ogni 4 cifre
        input.value = input.value.replace(/(\d{4})/g, '$1 ');
    }
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