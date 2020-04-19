<%--
  Created by IntelliJ IDEA.
  User: SONY
  Date: 02/03/2020
  Time: 00:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="fr">

<head>
    <title>Car Rent &mdash; Locations</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=DM+Sans:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


<div class="site-wrap" id="home-section">

    <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>


    <%
        int menu = 7;
    %>
    <%@ include file="menu.jsp"%>
    <div class="ftco-blocks-cover-1">
        <div class="ftco-cover-1 overlay innerpage" style="background-image: url('images/donkeng.jpg')">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-lg-6 text-center">
                        <h1>Nouveau vehicule</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section bg-light" id="contact-section">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-7 text-center mb-5">
                    <h2>Remplir les informations sur le nouveau vehicule</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-12" >
                    <form action="enregVoiture" method="post">
                        <div class="form-group row">
                            <div class="col-md-6 mb-4 mb-lg-0">
                                <input type="text" class="form-control" placeholder="Marque" name="marque">
                            </div>
                            <div class="col-md-6 mb-4 mb-lg-0">
                                <input type="file" class="form-control" accept="image/jpeg" placeholder="Image vehicule" name="image">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6 mb-4 mb-lg-0">
                                <input type="number" min="2" max="4" step="2" class="form-control" placeholder="nombre de portieres" name="portieres">
                            </div>
                            <div class="col-md-6">
                                <input type="number" min="2" step="2" max="6" class="form-control" placeholder="nombre de places" name="places">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <input type="number" min="0" class="form-control" placeholder="Prix journee" name="prix">

                            </div>
                            <div class="col-md-6">
                                <input type="number" min="0" max="5" class="form-control" placeholder="Standing" name="standing">

                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <select class="col-md-12" name="transmission">
                                    <option>Automatique</option>
                                    <option>Manuel</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6 mr-auto">
                                <input type="submit" class="btn btn-block btn-primary text-white py-3 px-5" value="Ajouter">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>




    <%@ include file="footer.jsp"%>

</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/jquery.fancybox.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/aos.js"></script>

<script src="js/main.js"></script>

</body>

</html>

