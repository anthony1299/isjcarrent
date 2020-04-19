package org.isj.carrent.presentation;

import org.isj.carrent.domaine.Voiture;
import org.isj.carrent.domaine.enumerations.Transmission;
import org.isj.carrent.services.Iservice;
import org.isj.carrent.services.ServiceImpl;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UpdateServlet", urlPatterns = {"/update"})
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("isjcarrent2-pu");
        EntityManager em =emf.createEntityManager();
        Iservice iservice = new ServiceImpl(em);
        HttpSession httpSession = request.getSession();
        Voiture v = (Voiture)httpSession.getAttribute("vToupdate");
        String marque = request.getParameter("marque");
        String nb_portes = request.getParameter("portieres");
        String standing = request.getParameter("standing");
        int prix_jour = Integer.parseInt(request.getParameter("prix"));
        String places= request.getParameter("places");
        String adresse_image = request.getParameter("image");
        String statut = "Disponible";
        String transmission = request.getParameter("transmission");
        Transmission t;
        if (transmission=="Automatique"){
            t=Transmission.Automatique;
        }else {
            t=Transmission.Manuel;
        }
        Voiture v2 = new Voiture();
        v2.setMarque(marque);
        v2.setTransmission(t);
        v2.setImage(adresse_image);
        v2.setNb_porte(nb_portes);
        v2.setPrix_jour(prix_jour);
        v2.setStatut(statut);
        v2.setStanding(standing);
        v2.setNb_place(places);
        iservice.updatevoiture(v,v2);

        request.getRequestDispatcher("/listvoitureadmin").forward(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
