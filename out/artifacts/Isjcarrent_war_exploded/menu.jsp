<%--
  Created by IntelliJ IDEA.
  User: Channel
  Date: 29/02/2020
  Time: 04:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <header class="site-navbar site-navbar-target" role="banner">

        <div class="container">
            <div class="row align-items-center position-relative">

                <div class="col-3 ">
                    <div class="site-logo">
                        <a href="index.html">CarRent</a>
                    </div>

                </div>

                <div class="col-9  text-right">


                    <span class="d-inline-block d-lg-none"><a href="#" class="text-white site-menu-toggle js-menu-toggle py-5 text-white"><span class="icon-menu h3 text-white"></span></a></span>

                    <nav class="site-navigation text-right ml-auto d-none d-lg-block" role="navigation">
                        <ul class="site-menu main-menu js-clone-nav ml-auto ">
                            <%
                                HttpSession session1 = request.getSession();
                                if(session1.getAttribute("user")== null){
                                    if (menu ==1){
                                        out.println("<li class=\"active\"><a href=\"index.jsp\" class=\"nav-link\">Accueil</a></li>");
                                    }else{
                                        out.println("<li><a href=\"index.jsp\" class=\"nav-link\">Accueil</a></li>");
                                    }
                                    if (menu ==2){
                                        out.println("<li class=\"active\"><a href=\"services.jsp\" class=\"nav-link\">Nos services</a></li>");
                                    }else {
                                        out.println(" <li><a href=\"services.jsp\" class=\"nav-link\">Nos services</a></li>");
                                    }
                                    if (menu ==3){
                                        out.println("<li class=\"active\"><a href=\"cars.jsp\" class=\"nav-link\">Nos vehicules</a></li>");
                                    }else {
                                        out.println("<li><a href=\"cars.jsp\" class=\"nav-link\">Nos vehicules</a></li>");
                                    }

                                    if (menu ==6){
                                        out.println("<li class=\"active\"><a href=\"louer\" class=\"nav-link\">Louer</a></li>");
                                    }else {
                                        out.println("<li><a href=\"louer\" class=\"nav-link\">Louer</a></li>");
                                    }
                                    if (menu ==4){
                                        out.println("<li class=\"active\"><a href=\"connexion.jsp\" class=\"nav-link\">Se connecter</a></li>");
                                    }else {
                                        out.println("<li><a href=\"connexion.jsp\" class=\"nav-link\">Se connecter</a></li>");
                                    }
                                }
                                else { if (menu ==7){
                                    out.println("<li class=\"active\"><a href=\"n_vehicules.jsp\" class=\"nav-link\">Nouveau vehicule</a></li>");
                                     }else {
                                    out.println("<li><a href=\"n_vehicules.jsp\" class=\"nav-link\">Nouveau vehicule</a></li>");
                                    }
                                    if (menu ==3){
                                        out.println("<li class=\"active\"><a href=\"vehiculesAdmin.jsp\" class=\"nav-link\">Liste vehicules</a></li>");
                                    }else {
                                        out.println("<li><a href=\"vehiculesAdmin.jsp\" class=\"nav-link\">Liste vehicules</a></li>");
                                    }

                                    if (menu ==6){
                                        out.println("<li class=\"active\"><a href=\"listreserv\" class=\"nav-link\">Liste Reservations</a></li>");
                                    }else {
                                        out.println("<li><a href=\"listreserv\" class=\"nav-link\">Liste Reservations</a></li>");
                                    }
                                    if (menu ==4){
                                        out.println("<li class=\"active\"><a href=\"index.jsp\" class=\"nav-link\">Deconnexion</a></li>");
                                        session.removeAttribute("user");
                                    }else {
                                        out.println("<li><a href=\"index.jsp\" class=\"nav-link\">Deconnexion</a></li>");
                                    }

                                }

                               %>
                        </ul>
                    </nav>
                </div>


            </div>
        </div>

    </header>
</head>
<body>

</body>
</html>
