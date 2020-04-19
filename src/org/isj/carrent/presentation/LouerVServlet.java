package org.isj.carrent.presentation;

import org.isj.carrent.domaine.Client;
import org.isj.carrent.domaine.Reservation;
import org.isj.carrent.domaine.Voiture;
import org.isj.carrent.domaine.enumerations.StatutReservation;
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
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "LouerVServlet", urlPatterns = {"/louerbtn"})
public class LouerVServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Client client =new Client();
        Voiture v = new Voiture();
        Reservation reservation =new Reservation();
        String nomClient=request.getParameter("nomclient");
        System.out.println(nomClient);
        String prenomClient=request.getParameter("prenomclient");
        System.out.println(prenomClient);
        String email=request.getParameter("emailclient");
        System.out.println(email);
        String sexeClient= request.getParameter("sexeclient");
        System.out.println(sexeClient);
        String dateDepart=request.getParameter("dateDepClient");
        dateDepart=dateDepart.replace('/','-');
        String dateretour=request.getParameter("dateRetClient");
        dateretour=dateretour.replace('/','-');
        String marque=request.getParameter("selectVoiture");
        v.setMarque(marque.substring(0,marque.indexOf("-")-1));
        client.setNom(nomClient);
        client.setEmail(email);
        client.setPrenom(prenomClient);
        client.setSexe(sexeClient);
        client.setAge(22);
        reservation.setCli(client);
        reservation.setR_id_voiture(v);
        reservation.setStatut(StatutReservation.Attente);
        SimpleDateFormat format =new SimpleDateFormat("dd-MM-yyyy");
        try {
            Date date = format.parse(dateDepart);
            Date date2 = format.parse(dateretour);
            reservation.setDate_depart(date);
            reservation.setDate_retour(date2);

        } catch (ParseException e) {
            e.printStackTrace();
        }
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("isjcarrent2-pu");
        EntityManager em =emf.createEntityManager();
        Iservice iservice = new ServiceImpl(em);
        System.out.println(marque.split("-")[0]+" client: "+client.toString()+" reservation: "+reservation.toString());
        iservice.savereservation(reservation);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
