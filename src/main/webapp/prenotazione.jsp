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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="CSS/styleBooking.css">
    <link rel="stylesheet" href="CSS/style.css">

    <script type="module" src="js/scripts.js"></script>
    <script type="module" src="TySc/tyS.ts"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Prenotazione</title>
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
                                <a class="dropdown-item" style="border-radius: 40px" href="PersonalServlet">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                    Profilo</a>
                                <!--Prenota-->
                                <a class="dropdown-item" style="border-radius: 40px" href="SearchServlet">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
                                        <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                        <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                    </svg>
                                    Prenota
                                </a>
                                <!--Prenotazioni-->
                                <form action="ShowBookingServlet" method="post">
                                    <input type="hidden" name="email" value="${email}">
                                    <button class="dropdown-item" style="border-radius: 40px" >
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                                        </svg>
                                        Prenotazioni
                                    </button>
                                </form>
                                <hr />
                                <!--Parcheggi-->
                                <a class="dropdown-item" style="border-radius: 40px" href="#parcheggi">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-p-circle" viewBox="0 0 16 16">
                                        <path d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8Zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002h2.962C10.045 4.002 11 5.104 11 6.586c0 1.494-.967 2.578-2.55 2.578H6.784V12H5.5V4.002Zm2.77 4.072c.893 0 1.419-.545 1.419-1.488s-.526-1.482-1.42-1.482H6.778v2.97H8.27Z"/>
                                    </svg>
                                    Dove siamo
                                </a>
                                <!--Aiuto-->
                                <a class="dropdown-item" style="border-radius: 40px" href="aiuto">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
                                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                        <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
                                    </svg>
                                    Aiuto
                                </a>
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
            <div class="container px-4 px-lg-5 h-100">
                    <div class="form-bg">
                        <div class="container">
                            <div class="col-md-4 col-md-offset-4">
                                <div class="form-container" style="font-family: 'Inter', sans-serif">
                                        <h3 class="title">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" style="color: #F4623AE5" class="bi bi-calendar-week" viewBox="0 0 16 16">
                                                <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
                                                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                            </svg>
                                        </h3>
                                        <form id="bookingForm" class="form-horizontal" action="BookingServlet" method="post">
                                            <hr>
                                            <div class = "form-group row">
                                                <div class="col-md-4">
                                                    <label name="dataP">Data</label>
                                                    <input name="dataP"  class="form-control" type="date" required>
                                                </div>
                                                <div class="col-md-4">
                                                    <label name="oraI">Orario ingresso</label>
                                                    <input name="oraI" value="07:00" class="form-control" type="time" min="07:00" required>
                                                </div>
                                                <div class="col-md-4">
                                                    <label name="oraF">Orario uscita</label>
                                                    <input name="oraF" value="23:00" class="form-control" type="time" max="23:00" required>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class = "form-group row">

                                                <div class="col-md-4">
                                                    <label name="tipoV">Tipo Veicolo</label>
                                                    <select class= "form-control" name="tipoV" required>
                                                        <option value="">--scegli--</option>
                                                        <option type="hidden" name="tipoV">Auto</option>
                                                        <option type="hidden" name="tipoV">Furgone</option>
                                                        <option type="hidden" name="tipoV">Moto</option>
                                                    </select>
                                                </div>

                                                <div class="col-md-4">
                                                    <label name="targa">Targa Veicolo</label>
                                                    <input name="targa" class="form-control" type="text" style="text-transform: uppercase" style="font-family: 'Inter', sans-serif" placeholder="GH104RT" maxlength="7" required>
                                                </div>

                                                <div class="col-md-4">
                                                    <label name="sceltaP">Metodo di pagamento</label>
                                                    <select class= "form-control" name="sceltaP" required>
                                                        <option value="">--scegli--</option>
                                                        <option type="hidden" name="cartaC">Carta di Credito/PayPal</option>
                                                        <option type="hidden" name="contanti">Al parcheggio</option>
                                                    </select>
                                                </div>

                                            </div>
                                            <input type="hidden" name="email" value="${email}">
                                            <input type="hidden" name="nomeP" value="${nomeP}">
                                            <input type="hidden" name="bookingBean" value="${bookingBean}">

                                            <button type="submit" class="btn btn-primary btn-lg text-white alert">Pagamento
                                                <br><i class="bi bi-credit-card-2-back-fill"></i>
                                            </button>
                                            <p class="text-muted"> Nota: qualora la prenotazione superasse le 5 ore la tariffa totale sarà di 20,00€.</p>
                                        </form>
                                    </div><!--Fine form container-->

                            </div>
                        </div>
                    </div>
            </div>
        </header>

        <!--Aiuto-->
        <section class="page-section" id="aiuto">
            <div class="container px-4 px-lg-5">
                <div class="text-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" style="color: #F4623AE5" class="bi bi-calendar-week" viewBox="0 0 16 16">
                        <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
                        <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                    </svg>
                </div>
                <h2 class="text-center mt-0">Come prenotare</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <!--<div class="col-lg-3 col-md-6 text-center">-->
                    <div class="mt-5">
                        <p class="text-muted mb-0">Per prenotare un parcheggio attraverso la nostra app, è necessario
                            seguire alcuni passaggi chiave. Prima di tutto, dovrai inserire la data in cui desideri
                            parcheggiare il tuo veicolo. In seguito, dovrai selezionare l'orario d'ingresso nel
                            parcheggio e l'orario di uscita (tutti i parcheggi sono disponibili dalle 07:00 alle 23:00). Dopo aver specificato gli orari d'ingresso e uscita,
                            dovrai indicare il tipo di veicolo che intendi parcheggiare: auto, moto o furgone.
                            Inserisci inoltre la targa del veicolo, in modo da poter identificare il tuo veicolo
                            all'arrivo al parcheggio.
                            Infine, dovrai scegliere il metodo di pagamento per la tua prenotazione. Puoi optare
                            per il pagamento tramite carta di credito o Paypal, oppure scegliere di pagare in
                            contanti direttamente al parcheggio.
                            Una volta completati questi passaggi, la prenotazione sarà quasi completata. Se hai
                            scelto il pagamento tramite carta di credito o Paypal, dovrai inserire i dati necessari
                            per il pagamento e confermare la prenotazione. Se invece hai scelto di pagare in contanti
                            al parcheggio, la prenotazione sarà comunque registrata e confermata, ma dovrai semplicemente
                            pagare il costo del parcheggio all'arrivo.
                            In ogni caso, riceverai una conferma della prenotazione attraverso l'app e sarai pronto per
                            parcheggiare il tuo veicolo al tuo arrivo al parcheggio
                        </p>
                    </div>
                </div>
            </div>
        </section>

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