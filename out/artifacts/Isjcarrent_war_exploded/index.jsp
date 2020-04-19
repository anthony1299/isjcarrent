<%@ page import="org.isj.carrent.domaine.Voiture" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Channel
  Date: 29/02/2020
  Time: 04:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
  <title>Car Rent &mdash; Free Website Template by Colorlib</title>
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
    int menu = 1;
  %>
  <%@ include file="menu.jsp"%>
  <div class="ftco-blocks-cover-1">
    <div class="ftco-cover-1 overlay" style="background-image: url('images/baniere.jpg')">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5">
            <%--<div class="feature-car-rent-box-1">
              <h3>Range Rover S7</h3>
              <ul class="list-unstyled">
                <li>
                  <span>Doors</span>
                  <span class="spec">4</span>
                </li>
                <li>
                  <span>Seats</span>
                  <span class="spec">6</span>
                </li>
                <li>
                  <span>Lugage</span>
                  <span class="spec">2 Suitcase/2 Bags</span>
                </li>
                <li>
                  <span>Transmission</span>
                  <span class="spec">Automatic</span>
                </li>
                <li>
                  <span>Minium age</span>
                  <span class="spec">Automatic</span>
                </li>
              </ul>
              <div class="d-flex align-items-center bg-light p-3">
                <span>$150/day</span>
                <a href="louer.jsp" class="ml-auto btn btn-primary">Rent Now</a>
              </div>--%>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%--<div class="site-section pt-0 pb-0 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-12">

          <form class="trip-form">
            <div class="row align-items-center mb-4">
              <div class="col-md-6">
                <h3 class="m-0">Commencez votre trajet ici!!</h3>
              </div>
              <div class="col-md-6 text-md-right">
                <span class="text-primary">32</span> <span>Véhicules disponible</span></span>
              </div>
            </div>
            <div class="row">
              <div class="form-group col-md-3">
                <label for="cf-1">Où êtes-vous?</label>
                <input type="text" id="cf-1" placeholder="Adresse de départ" class="form-control">
              </div>
              <div class="form-group col-md-3">
                <label for="cf-2">Où allez-vous?</label>
                <input type="text" id="cf-2" placeholder="Adresse de destination" class="form-control">
              </div>
              <div class="form-group col-md-3">
                <label for="cf-3">Date de départ</label>
                <input type="text" id="cf-3" placeholder="Entrez la date" class="form-control datepicker px-3">
              </div>
              <div class="form-group col-md-3">
                <label for="cf-4">Date de retour</label>
                <input type="text" id="cf-4" placeholder="Entrez la date" class="form-control datepicker px-3">
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <input type="submit" value="Envoyer" class="btn btn-primary">
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>--%>



  <div class="site-section bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          <h3>Nos Services</h3>
          <p class="mb-4">Nous vous offrons un ensemble de sevices dans l'optique d'ameliorer la relation client!</p>
          <p>
            <a href="#" class="btn btn-primary custom-prev">Précédent</a>
            <span class="mx-2">/</span>
            <a href="#" class="btn btn-primary custom-next">Suivant</a>
          </p>
        </div>
        <div class="col-lg-9">




          <div class="nonloop-block-13 owl-carousel">

            <%--<%
              List<Voiture> listvoiture = (List<Voiture>)session.getAttribute("listvoiture");
              int nbrevehicule = 0;
              int j=0;
              List<Voiture> list = listvoiture.subList((listvoiture.size()-2), listvoiture.size());

              out.println("<div class=\"item-1\">\n" +
                      "              <a href=\"#\"><img src=\"images/"+list.get(0).getImage()+"\" alt=\"Image\" class=\"img-fluid\"></a>\n" +
                      "              <div class=\"item-1-contents\">\n" +
                      "                <div class=\"text-center\">\n" +
                      "                                <h3><a href=\"#\">"+list.get(0).getMarque().toUpperCase()+"</a></h3>\n"+
                      "                  <div class=\"rating\">\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                  </div>\n" +
                      "                                <div class=\"rent-price\"><span>"+list.get(0).getPrix_jour()+" FCFA/</span>day</div>\n" +
                      "                </div>\n" +
                      "                <ul class=\"specs\">\n" +
                      "                  <li>\n" +
                      "                                    <span>Portieres</span>\n" +
                      "                                    <span class=\"spec\">"+list.get(0).getNb_porte()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Places</span>\n" +
                      "                                    <span class=\"spec\">"+list.get(0).getNb_place()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Transmission</span>\n" +
                      "                                    <span class=\"spec\">"+list.get(0).getTransmission().name().toUpperCase()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Age minimum</span>\n" +
                      "                                    <span class=\"spec\">21 ans</span>\n" +
                      "                                </li>\n" +
                      "                </ul>\n" +
                      "                <div class=\"d-flex action\">\n" +
                      "                  <a href=\"louer.jsp\" class=\"btn btn-primary\">Louer maintenant</a>\n" +
                      "                </div>\n" +
                      "              </div>\n" +
                      "            </div>\n" +
                      "\n" +
                      "\n" +
                      "            <div class=\"item-1\">\n" +
                      "              <a href=\"#\"><img src=\"images/"+list.get(1).getImage()+"\" alt=\"Image\" class=\"img-fluid\"></a>\n" +
                      "              <div class=\"item-1-contents\">\n" +
                      "                <div class=\"text-center\">\n" +
                      "                                <h3><a href=\"#\">"+list.get(1).getMarque().toUpperCase()+"</a></h3>\n"+
                      "                  <div class=\"rating\">\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                    <span class=\"icon-star text-warning\"></span>\n" +
                      "                  </div>\n" +
                      "                                <div class=\"rent-price\"><span>"+list.get(1).getPrix_jour()+" FCFA/</span>day</div>\n" +
                      "                </div>\n" +
                      "                <ul class=\"specs\">\n" +
                      "                  <li>\n" +
                      "                                    <span>Portieres</span>\n" +
                      "                                    <span class=\"spec\">"+list.get(1).getNb_porte()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Places</span>\n" +
                      "                                    <span class=\"spec\">"+list.get(1).getNb_place()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Transmission</span>\n" +
                      "                                    <span class=\"spec\">"+list.get(1).getTransmission().name().toUpperCase()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Age minimum</span>\n" +
                      "                                    <span class=\"spec\">21 ans</span>\n" +
                      "                                </li>\n" +
                      "                </ul>\n" +
                      "                <div class=\"d-flex action\">\n" +
                      "                  <a href=\"louer.jsp\" class=\"btn btn-primary\">Louer maintenant</a>\n" +
                      "                </div>\n" +
                      "              </div>\n" +
                      "            </div>");

            %>--%>
            <%
              List<Voiture> listvoiture = (List<Voiture>)session.getAttribute("listvoiture");

            out.println("<div class=\"item-1\">\n" +
                    "              <a href=\"#\"><img src=\"images/pajero.jpg\" alt=\"Image\" class=\"img-fluid\"></a>\n" +
                    "              <div class=\"item-1-contents\">\n" +
                    "                <div class=\"text-center\">\n" +
                    "                  <h3><a href=\"#\">PAJERO</a></h3>\n" +
                    "                  <div class=\"rating\">\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                  </div>\n" +
                    "                  <div class=\"rent-price\"><span>150000 FCFA/</span>day</div>\n" +
                    "                </div>\n" +
                    "                <ul class=\"specs\">\n" +
                    "                  <li>\n" +
                    "                    <span>Portière</span>\n" +
                    "                    <span class=\"spec\">4</span>\n" +
                    "                  </li>\n" +
                    "                  <li>\n" +
                    "                    <span>Place</span>\n" +
                    "                    <span class=\"spec\">6</span>\n" +
                    "                  </li>\n" +
                    "                  <li>\n" +
                    "                    <span>Transmission</span>\n" +
                    "                    <span class=\"spec\">MANUEL</span>\n" +
                    "                  </li>\n" +
                    "                  <li>\n" +
                    "                    <span>Age minimum</span>\n" +
                    "                    <span class=\"spec\">21 ans</span>\n" +
                    "                  </li>\n" +
                    "                </ul>\n" +
                    "                <div class=\"d-flex action\">\n" +
                    "                  <a href=\"louer.jsp\" class=\"btn btn-primary\">Louer maintenant</a>\n" +
                    "                </div>\n" +
                    "              </div>\n" +
                    "            </div>");
            out.println("<div class=\"item-1\">\n" +
                    "              <a href=\"#\"><img src=\"images/mer.jpg\" alt=\"Image\" class=\"img-fluid\"></a>\n" +
                    "              <div class=\"item-1-contents\">\n" +
                    "                <div class=\"text-center\">\n" +
                    "                  <h3><a href=\"#\">MERCEDES 4*4</a></h3>\n" +
                    "                  <div class=\"rating\">\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                    <span class=\"icon-star text-warning\"></span>\n" +
                    "                  </div>\n" +
                    "                  <div class=\"rent-price\"><span>150000 FCFA/</span>day</div>\n" +
                    "                </div>\n" +
                    "                <ul class=\"specs\">\n" +
                    "                  <li>\n" +
                    "                    <span>Portière</span>\n" +
                    "                    <span class=\"spec\">4</span>\n" +
                    "                  </li>\n" +
                    "                  <li>\n" +
                    "                    <span>Place</span>\n" +
                    "                    <span class=\"spec\">4</span>\n" +
                    "                  </li>\n" +
                    "                  <li>\n" +
                    "                    <span>Transmission</span>\n" +
                    "                    <span class=\"spec\">MANUEL</span>\n" +
                    "                  </li>\n" +
                    "                  <li>\n" +
                    "                    <span>Age minimum</span>\n" +
                    "                    <span class=\"spec\">21 ans</span>\n" +
                    "                  </li>\n" +
                    "                </ul>\n" +
                    "                <div class=\"d-flex action\">\n" +
                    "                  <a href=\"louer.jsp\" class=\"btn btn-primary\">Louer maintenant</a>\n" +
                    "                </div>\n" +
                    "              </div>\n" +
                    "            </div>");

            %>

          </div>

        </div>
      </div>
    </div>
  </div>

  <div class="site-section section-3" style="background-image: url('images/donkeng.jpg');">
    <div class="container">
      <div class="row">
        <div class="col-12 text-center mb-5">
          <h2 class="text-white">Nos services</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4">
          <div class="service-1">
              <span class="service-1-icon">
                <span class="flaticon-car-1"></span>
              </span>
            <div class="service-1-contents">
              <h3>Reparation</h3>
              <p>Contactez nous en cas de pannes lors de votre location.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="service-1">
              <span class="service-1-icon">
                <span class="flaticon-traffic"></span>
              </span>
            <<div class="service-1-contents">
            <h3>Boite a outils</h3>
            <p>Nous vous offrons un ensemble d'accessoires (kit complet) pour tout vos voyages.</p>
          </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="service-1">
              <span class="service-1-icon">
                <span class="flaticon-valet"></span>
              </span>
            <div class="service-1-contents">
              <h3>Voiturier</h3>
              <p>En cas de besoin, nous mettons a votre disposition un chauffeur.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>





  <div class="site-section bg-light">
    <div class="container">
      <div class="row justify-content-center text-center mb-5">
        <div class="col-7 text-center mb-5">
          <h2>Notre Equipe!!!</h2>
          <p>Présentation de notre équipe</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 mb-3 mb-lg-0">
          <div class="testimonial-2">
            <blockquote class="mb-4">
              <p>"Je suis Constantin. Responsable des véhicules"</p>
            </blockquote>
            <div class="d-flex v-card align-items-center">
              <img src="images/consty.jpeg" alt="Image" class="img-fluid mr-3">
              <span>Nitcheu Consty</span>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3 mb-lg-0">
          <div class="testimonial-2">
            <blockquote class="mb-4">
              <p>"Je suis Channel Donkeng responsable de la clientèle"</p>
            </blockquote>
            <div class="d-flex v-card align-items-center">
              <img src="images/channel.jpg" alt="Image" class="img-fluid mr-3">
              <span>Donkeng Channel</span>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3 mb-lg-0">
          <div class="testimonial-2">
            <blockquote class="mb-4">
              <p>"Fodjo Maxime, je suis chargé de contrôller les véhicules"</p>
            </blockquote>
            <div class="d-flex v-card align-items-center">
              <img src="images/max.jpg" alt="Image" class="img-fluid mr-3">
              <span>Fodjo Maxime</span>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3 mb-lg-0">
          <div class="testimonial-2">
            <blockquote class="mb-4">
              <p>"FOUDA Anthony Directeur Général"</p>
            </blockquote>
            <div class="d-flex v-card align-items-center">
              <img src="images/antho.jpg" alt="Image" class="img-fluid mr-3">
              <span>Fouda Anthony</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <%--<div class="site-section bg-white">
    <div class="container">
      <div class="row justify-content-center text-center mb-5">
        <div class="col-7 text-center mb-5">
          <h2>Our Blog</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo assumenda, dolorum necessitatibus eius earum voluptates sed!</p>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="post-entry-1 h-100">
            <a href="single.jsp">
              <img src="images/post_1.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">

              <h2><a href="single.jsp">The best car rent in the entire planet</a></h2>
              <span class="meta d-inline-block mb-3">July 17, 2019 <span class="mx-2">by</span> <a href="#">Admin</a></span>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores eos soluta, dolore harum molestias consectetur.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="post-entry-1 h-100">
            <a href="single.jsp">
              <img src="images/img_2.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">

              <h2><a href="single.jsp">The best car rent in the entire planet</a></h2>
              <span class="meta d-inline-block mb-3">July 17, 2019 <span class="mx-2">by</span> <a href="#">Admin</a></span>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores eos soluta, dolore harum molestias consectetur.</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
          <div class="post-entry-1 h-100">
            <a href="single.jsp">
              <img src="images/img_3.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">

              <h2><a href="single.jsp">The best car rent in the entire planet</a></h2>
              <span class="meta d-inline-block mb-3">July 17, 2019 <span class="mx-2">by</span> <a href="#">Admin</a></span>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores eos soluta, dolore harum molestias consectetur.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>--%>



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


