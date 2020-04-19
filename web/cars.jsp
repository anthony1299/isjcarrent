<%@ page import="org.isj.carrent.domaine.Voiture" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="fr">

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
        int menu = 3;
      %>
      <%@ include file="menu.jsp"%>
    <div class="ftco-blocks-cover-1">
      <div class="ftco-cover-1 overlay innerpage" style="background-image: url('images/duty.png')">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 text-center">
              <h1>Nos v&eacute;hicules</h1>
              <p>Vous retrouverez les vehicules de luxe a votre disposition</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-light">
      <div class="container">
        <%
          List<Voiture> listvoiture = (List<Voiture>)session.getAttribute("listvoiture");
          int nbrevehicule = 0;
          int j=0;
          if(listvoiture!=null) {
            for (Voiture v : listvoiture) {

              j++;
              nbrevehicule++;

              if (nbrevehicule == 1) {
                out.println("<div class=\"row\">");
              }
              out.println("  <div class=\"col-lg-4 col-md-6 \">\n" +
                      "                    <div class=\"item-1\">\n" +
                      "                        <a href=\"#\"><img src=\"images/"+v.getImage()+"\" alt=\"Image\" class=\"img-fluid\"></a>\n" +
                      "                        <div class=\"item-1-contents\">\n" +
                      "                            <div class=\"text-center\">\n" +
                      "                                <h3><a href=\"#\">"+v.getMarque().toUpperCase()+"</a></h3>\n"+
                      "  <div class=\"rating\">");
              out.println(" <form action=\"louer\" method=\"GET\"><input name=\"mque\" type=\"hidden\" value=\""+v.getMarque()+"\">");
              for (int i=1;i<=Integer.parseInt(v.getStanding());i++){
                out.println("<span class=\"icon-star text-warning\"></span>");
              }
              out.println("  </div>\n" +
                      "                                <div class=\"rent-price\"><span>"+v.getPrix_jour()+" FCFA/</span>day</div>\n" +
                      "                            </div>\n" +
                      "                            <ul class=\"specs\">\n" +
                      "                                <li>\n" +
                      "                                    <span>Portieres</span>\n" +
                      "                                    <span class=\"spec\">"+v.getNb_porte()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Places</span>\n" +
                      "                                    <span class=\"spec\">"+v.getNb_place()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Transmission</span>\n" +
                      "                                    <span class=\"spec\">"+v.getTransmission().name().toUpperCase()+"</span>\n" +
                      "                                </li>\n" +
                      "                                <li>\n" +
                      "                                    <span>Age minimum</span>\n" +
                      "                                    <span class=\"spec\">21 ans</span>\n" +
                      "                                </li>\n" +
                      "                            </ul>\n" +
                      "                            <div class=\"d-flex action\">\n" +
                      "<input type=\"submit\" class=\"btn btn-primary\" value=\"Louez Maintenant\">"+
                      "</form>");
              out.println(
                      "                     </div>"+
                      "                        </div>\n" +

                      "                    </div>\n" +
                      "                </div>");
              out.println();
              if ((nbrevehicule == 3) || (j == listvoiture.size())) {
                out.println("</div>");
                nbrevehicule = 0;
              }
            }
          }
        %>

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

