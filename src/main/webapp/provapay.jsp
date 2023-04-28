<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 28/04/23
  Time: 09:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <link rel="stylesheet" href="CSS/style.css">
    <script type="module" src="js/jsPay.js"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Pagamento</title>

    <style>
        .btn-group-vertical>.btn:not(:first-child),
        .btn-group-vertical>.btn-group:not(:first-child) {
            margin-top: 0;
        }
    </style>

</head>
<body>

    <section>
        <div class="d-flex justify-content-between align-items-center mb-5">
            <div class="d-flex flex-row align-items-center">
                <h4 class="text-uppercase mt-1">Eligible</h4>
                <span class="ms-2 me-3">Pay</span>
            </div>
            <a href="#!">Cancel and return to the website</a>
        </div>

        <div class="row">
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
                                <input type="number" name="numCarta" placeholder="5136 1845 5468 3894" maxlength="16" class="form-control" required />
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
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <label>
                                                <span class="hidden-xs"><!--Data di Scadenza-->
                                                    <h6>Data Scadenza</h6>
                                                </span>
                                    </label>
                                    <div class="input-group">
                                        <input type="number" placeholder="MM" name="MM" class="form-control" value="1" min="1" max="12" required />
                                        <input type="number" placeholder="YY" name="YYYY" class="form-control" value="23" min="23" max="30" required />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group mb-4"> <!--CVV-->
                                    <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                                        <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                    </label>
                                    <input type="password" name="cvv" required class="form-control" />
                                </div>
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
            <!--Qui io -->
            <div class="col-md-5 col-lg-4 col-xl-4 offset-lg-1 offset-xl-2">
                <div class="p-3" style="background-color: #eee;">
                    <span class="fw-bold">Order Recap</span>
                    <div class="d-flex justify-content-between mt-2">
                        <span>contracted Price</span> <span>$186.86</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2">
                        <span>Amount Deductible</span> <span>$0.0</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2">
                        <span>Coinsurance(0%)</span> <span>+ $0.0</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2">
                        <span>Copayment </span> <span>+ 40.00</span>
                    </div>
                    <hr />
                    <div class="d-flex justify-content-between mt-2">
                          <span class="lh-sm">Total Deductible,<br />
                            Coinsurance and copay
                          </span>
                        <span>$40.00</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2">
          <span class="lh-sm">Maximum out-of-pocket <br />
            on insurance policy</span>
                        <span>$40.00</span>
                    </div>
                    <hr />
                    <div class="d-flex justify-content-between mt-2">
                        <span>Insurance Responsibility </span> <span>$71.76</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2">
                        <span>Patient Balance </span> <span>$13.24</span>
                    </div>
                    <hr />
                    <div class="d-flex justify-content-between mt-2">
                        <span>Total </span> <span class="text-success">$85.00</span>
                    </div>
                </div>
            </div>
        </div>
    </section>


</body>
</html>
