<%@ page import="org.isj.carrent.domaine.Voiture" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="en">

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
        int menu = 6;
      %>
      <%@ include file="menu.jsp"%>
    <div class="ftco-blocks-cover-1">
      <div class="ftco-cover-1 overlay innerpage" style="background-image: url('images/donkeng.jpg')">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 text-center">
              <h1>Louer votre vehicule</h1>
              <p>Nous sommes toujours disponible pour vous</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row justify-content-center text-center">
        <div class="col-7 text-center mb-5">
          <h2>Nous contacter ou reserver votre voiture</h2>
          <p>Dans le formulaire de gauche il est possible de faire votre reservation et a droite nos coordonnes pour vous permettre de nous joindre</p>
        </div>
      </div>
        <div class="row">
          <div class="col-lg-8 mb-5" >

                    <%out.println("<form action=\"louerbtn\" method=\"post\">\n" +
"              <div class=\"form-group row\">\n" +
"                <div class=\"col-md-6 mb-4 mb-lg-0\">\n" +
"                  <input type=\"text\" class=\"form-control\" placeholder=\"Nom\" name=\"nomclient\">\n" +
"                </div>\n" +
"                <div class=\"col-md-6\">\n" +
"                  <input type=\"text\" class=\"form-control\" placeholder=\"Prenom\" name=\"prenomclient\">\n" +
"                </div>\n" +
"              </div>\n" +
"              <div class=\"form-group row\">\n" +
"                <div class=\"col-md-6 mb-4 mb-lg-0\">\n" +
"                  <input type=\"text\" class=\"form-control\" placeholder=\"sexe\" name=\"sexeclient\">\n" +
"                </div>\n" +
"                <div class=\"col-md-6\">\n" +
"                  <input type=\"text\" class=\"form-control\" placeholder=\"Email\" name=\"emailclient\">\n" +
"                </div>\n" +
"              </div>\n" +
"\n" +
"              <div class=\"form-group row\">\n" +
"                <div class=\"col-md-6 mb-4 mb-lg-0\">\n" +
"                  <input type=\"text\" id=\"cf-3\" placeholder=\"Date depart\" class=\"form-control datepicker px-3\" name=\"dateDepClient\">\n" +
"                </div>\n" +
"                <div class=\"col-md-6\">\n" +
"                  <input type=\"text\" id=\"cf-4\" placeholder=\"Date retour\" class=\"form-control datepicker px-3\" name=\"dateRetClient\">\n" +
"                </div>\n" +
"              </div>\n" +
"\n" +
"              <div class=\"form-group row\">\n" +
"                <div class=\"col-md-12\">");%>
                  <%
                    List<Voiture> listvoiture = (List<Voiture>)session.getAttribute("listlocation");
                    if(listvoiture!=null){
                      out.println("<select class=\"col-md-12\" name=\"selectVoiture\">");
                      for (Voiture v : listvoiture){
                        out.println("<option>"+v.getMarque()+" - "+v.getPrix_jour()+" FCFA par jour </option>");
                      }
                      out.println("</select>\n" +
                              "                </div>\n" +
                              "              </div>\n" +
                              "\n" +
                              "              <div class=\"form-group row\">\n" +
                              "                <div class=\"col-md-12\">\n" +
                              "                  <textarea name=\"\" id=\"\" class=\"form-control\" placeholder=\"Saisissez votre message\" cols=\"30\" rows=\"10\"></textarea>\n" +
                              "                </div>\n" +
                              "              </div>\n" +
                              "              <div class=\"form-group row\">\n" +
                              "                <div class=\"col-md-6 mr-auto\">\n" +
                              "                  <input type=\"submit\" class=\"btn btn-block btn-primary text-white py-3 px-5\" value=\"Reserver\">\n" +
                              "                </div>\n" +
                              "              </div>\n" +
                              "            </form>\n" +
                              "          </div>\n" +
                              "          <div class=\"col-lg-4 ml-auto\">\n" +
                              "            <div class=\"bg-white p-3 p-md-5\">\n" +
                              "              <h3 class=\"text-black mb-4\">Nos coordonnees</h3>\n" +
                              "              <ul class=\"list-unstyled footer-link\">\n" +
                              "                <li class=\"d-block mb-3\">\n" +
                              "                  <span class=\"d-block text-black\">Addresse:</span>\n" +
                              "                  <span>Entree Simbock,Yaounde, Cameroun</span></li>\n" +
                              "                <li class=\"d-block mb-3\"><span class=\"d-block text-black\">Telephone:</span><span>+237 6 91 06 37 08</span></li>\n" +
                              "                <li class=\"d-block mb-3\"><span class=\"d-block text-black\">Email:</span><span>locavoi@gmail.com</span></li>\n" +
                              "              </ul>\n" +
                              "            </div>\n" +
                              "          </div>\n" +
                              "        </div>\n" +
                              "      </div>\n" +
                              "    </div>\n ");
                    }
                  %>


      <%@ include file="footer.jsp"%>

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

