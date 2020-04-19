package org.isj.carrent.presentation;

import org.isj.carrent.domaine.Voiture;
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

@WebServlet(name = "ListeVehiculeAdminServlet", urlPatterns = {"/listvoitureadmin"})
public class ListeVehiculeAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("isjcarrent2-pu");
        EntityManager em = emf.createEntityManager();
        Iservice service = new ServiceImpl(em);
        List<Voiture> listvoitures = new ArrayList<>();
        listvoitures=service.listevoitures();
        //sauvegarde la liste dans la session de l'application web,
        HttpSession session = request.getSession();
        session.setAttribute("listvoiture", listvoitures);

        request.getRequestDispatcher("vehiculesAdmin.jsp").forward(request, response);


    }
}
