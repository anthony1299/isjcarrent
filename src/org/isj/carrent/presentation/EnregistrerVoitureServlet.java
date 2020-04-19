package org.isj.carrent.presentation;

import org.isj.carrent.domaine.Utilisateur;
import org.isj.carrent.domaine.Voiture;
import org.isj.carrent.domaine.enumerations.Transmission;
import org.isj.carrent.services.Iservice;
import org.isj.carrent.services.ServiceImpl;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EnregistrerVoitureServlet",urlPatterns = {"/enregVoiture"})
public class EnregistrerVoitureServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        Utilisateur u = new Utilisateur();
        //recuperation des informations saisies par l'utilisateur
        String marque = request.getParameter("marque");
        String nb_portes = request.getParameter("portieres");
        String standing = request.getParameter("standing");
        String prix_jour = request.getParameter("prix");
        String places= request.getParameter("places");
        String adresse_image = request.getParameter("image");
        String statut = "Disponible";
        String transmission = request.getParameter("transmission");
        System.out.println(transmission);
        Transmission t;
        if (transmission=="Automatique"){
            t=Transmission.Automatique;
        }else {
            t=Transmission.Manuel;
        }

        //initialisation de l'objet utilisateur
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("isjcarrent2-pu");
        EntityManager em =emf.createEntityManager();
        Iservice iservice = new ServiceImpl(em);
        String user =request.getSession().getAttribute("user").toString();
        u=iservice.findByuser(user);


        //creation et initialisation de l'objet voiture
        Voiture v = new Voiture();
        v.setMarque(marque);
        v.setTransmission(t);
        v.setImage(adresse_image);
        v.setNb_porte(nb_portes);
        v.setPrix_jour(Integer.parseInt(prix_jour));
        v.setStatut(statut);
        v.setStanding(standing);
        v.setNb_place(places);
        v.setV_user(u);
        iservice.savevoiture(v);

        request.getRequestDispatcher("/listvoitureadmin").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
