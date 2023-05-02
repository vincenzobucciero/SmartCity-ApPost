<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 21/03/23
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>ApPost-Smart Parking</title>
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
  <link rel="stylesheet" href="img">
</head>

<body>
<!-- Navigation-->
<jsp:include page="NavBarUser.jsp" />

<!-- Masthead-->
<header class="masthead">
    <div class="row">
      <div class="col-lg-10 mx-auto mb-4">
        <h2 class="text-center mt-0" style="color: white">I tuoi dati</h2>
        <hr class="divider" style="max-width: 7rem"/>
      </div>

      <!-- Riquadro dell'avatar -->
      <div class="col-lg-3 mb-3">
        <div class="card">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                 class="rounded-circle img-fluid" style="width: 100px;">
            <h5 class="my-3">
              <c:choose>
                <c:when test="${userBean != null}">
                  <p class="text-muted mb-0">
                      ${userBean.getNome()} ${userBean.getCognome()}
                  </p>
                </c:when>
              </c:choose>
              <p class="text-muted mb-0">Utente</p>
            </h5>
          </div>
        </div>
      </div>

      <!-- Riquadro delle informazioni -->
      <div class="col-lg-7 mt-4 mt-lg-0">
        <div class="card">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Nome</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">
                  <c:choose>
                    <c:when test="${userBean != null}">
                      ${userBean.getNome()}
                    </c:when>
                  </c:choose>
                </p>
              </div>
            </div>
            <hr>

            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Cognome</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">
                  <c:choose>
                    <c:when test="${userBean != null}">
                      ${userBean.getCognome()}
                    </c:when>
                  </c:choose>
                </p>
              </div>
            </div>
            <hr>

            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">
                  <c:choose>
                    <c:when test="${userBean != null}">
                      ${userBean.getEmail()}
                    </c:when>
                  </c:choose>
                </p>
              </div>
            </div>
                <div>
                  <form action="ModifyUserServlet" method="post">
                    <input type="hidden" name="email" value="${userBean.getEmail()}">
                    <div class="text-center">
                      <button type="submit" class="btn btn-outline-primary">Modifica</button>
                    </div>
                  </form>
                </div>
          </div>
        </div>
      </div>
    </div>
</header>


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
