<%@ page import="org.isj.carrent.domaine.Voiture" %>
<%@ page import="java.util.List" %>
<%@ page import="org.isj.carrent.domaine.Reservation" %>
<%@ page import="org.isj.carrent.domaine.enumerations.StatutReservation" %><%--
  Created by IntelliJ IDEA.
  User: SONY
  Date: 21/03/2020
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <h1>Liste des reservations</h1>
                        <p>Accepter ou refuser les reservations</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section bg-light">
        <div class="container">
            <%
                List<Reservation> listreserv = (List<Reservation>)session.getAttribute("listreservation");
                int nbrereserv = 0;
                int j=0;
                if(listreserv!=null) {
                    for (Reservation r: listreserv) {

                        j++;
                        nbrereserv++;

                        if (nbrereserv == 1) {
                            out.println("<div class=\"row\">");
                        }
                        out.println("  <div class=\"col-lg-4 col-md-6 mb-4\">\n" +
                                "                    <div class=\"item-1\">\n" +
                                "                        <a href=\"#\"><img src=\"images/"+r.getR_id_voiture().getImage()+"\" alt=\"Image\" class=\"img-fluid\"></a>\n" +
                                "                        <div class=\"item-1-contents\">\n" +
                                "                            <div class=\"text-center\">\n" +
                                "                                <h3><a href=\"#\">Reservation de la "+r.getR_id_voiture().getMarque()+"</a></h3>\n"+
                                "  <div class=\"rating\">");
                        out.println(" <form action=\"acc\" method=\"GET\"><input name=\"accepter\" type=\"hidden\" value=\""+r.getId()+"\">");
                        for (int i=1;i<=Integer.parseInt(r.getR_id_voiture().getStanding());i++){
                            out.println("<span class=\"icon-star text-warning\"></span>");
                        }
                        out.println("  </div>\n" +
                                "                                <div class=\"rent-price\"><span>"+r.getR_id_voiture().getPrix_jour()+" FCFA/</span>day</div>\n" +
                                "                            </div>\n" +
                                "                            <ul class=\"specs\">\n" +
                                "                                <li>\n" +
                                "                                    <span>Nom</span>\n" +
                                "                                    <span class=\"spec\">"+r.getCli().getNom()+"</span>\n" +
                                "                                </li>\n" +
                                "                                <li>\n" +
                                "                                    <span>Email</span>\n" +
                                "                                    <span class=\"spec\">"+r.getCli().getEmail()+"</span>\n" +
                                "                                </li>\n" +
                                "                                <li>\n" +
                                "                                    <span>Depart</span>\n" +
                                "                                    <span class=\"spec\">"+r.getDate_depart()+"</span>\n" +
                                "                                </li>\n" +
                                "                                <li>\n" +
                                "                                    <span>Retour</span>\n" +
                                "                                    <span class=\"spec\">"+r.getDate_retour()+"</span>\n" +
                                "                                </li>\n" +
                                "                                <li>\n" +
                                "                                    <span>Nombre de jours</span>\n" +
                                "                                    <span class=\"spec\">"+r.getNbre_jours()+"</span>\n" +
                                "                                </li>\n" +
                                "                                <li>\n" +
                                "                                    <span>Facturation</span>\n" +
                                "                                    <span class=\"spec\">"+r.getNbre_jours()*r.getR_id_voiture().getPrix_jour()+" FCFA</span>\n" +
                                "                                </li>\n" +
                                "                                <li>\n" +
                                "                                    <span>Statut</span>\n" +
                                "                                    <span class=\"spec\">"+r.getStatut().name()+"</span>\n" +
                                "                                </li>\n" +
                                "                            </ul>\n" +
                                "                            <div class=\"d-flex action\">\n" );
                        if (r.getStatut().name()== StatutReservation.Accepté.name()){
                            out.println("</form>");
                            out.println(" <form action=\"ref\" method=\"GET\"><input name=\"refuser\" type=\"hidden\" value=\""+r.getId()+"\">"+
                                    "<input type=\"submit\" class=\"btn-primary\" name=\"btn_ref\" value=\"Refuser\">"+
                                    "</form>"+
                                    "                     </div>"+
                                    "                        </div>\n" +

                                    "                    </div>\n" +
                                    "                </div>");
                        }
                        else if (r.getStatut().name()== StatutReservation.Refusé.name()){
                            out.println("<input type=\"submit\" class=\"btn-primary\" value=\"Accepter\">");
                            out.println("</form>");
                            out.println(   "                     </div>"+
                                    "                        </div>\n" +

                                    "                    </div>\n" +
                                    "                </div>");


                        }
                        else{
                            out.println("<input type=\"submit\" class=\"btn-primary\" value=\"Accepter\">");
                            out.println("</form>");
                            out.println(" <form action=\"ref\" method=\"GET\"><input name=\"refuser\" type=\"hidden\" value=\""+r.getId()+"\">"+
                                            "<input type=\"submit\" class=\"btn-primary\" name=\"btn_ref\" style=\"margin-left:9em\" value=\"Refuser\">"+
                                            "</form>");
                            out.println(   "                     </div>"+
                                    "                        </div>\n" +

                                    "                    </div>\n" +
                                    "                </div>");


                        }


                        if ((nbrereserv == 4) || (j == listreserv.size())) {
                            out.println("</div>");
                            nbrereserv = 0;
                        }
                    }
                }
            %>


            <div class="col-12">
                <span class="p-3">1</span>
                <a href="#" class="p-3">2</a>
                <a href="#" class="p-3">3</a>
                <a href="#" class="p-3">4</a>
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


