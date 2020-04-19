package org.isj.carrent.presentation;

import org.isj.carrent.domaine.Reservation;
import org.isj.carrent.domaine.Utilisateur;
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

@WebServlet(name = "acc_refServlet" , urlPatterns = {"/acc"})
public class acc_refServlet extends HttpServlet {
    send_email_gmail s;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("isjcarrent2-pu");
        EntityManager em = emf.createEntityManager();
        Iservice service = new ServiceImpl(em);
            int id =Integer.parseInt(request.getParameter("accepter"));

            Utilisateur u =service.findByuser(request.getSession().getAttribute("user").toString());
            //envoyer un email à un client
            //s.send(u.getEmail());
            StatutReservation statutReservation =StatutReservation.Accepté;
            Reservation reservation=service.findReservationId(id);
            service.updatereservation(reservation,statutReservation);
            request.getRequestDispatcher("/listreserv").forward(request, response);


    }
}
