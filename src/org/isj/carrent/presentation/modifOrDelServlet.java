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

@WebServlet(name = "modifOrDelServlet", urlPatterns = {"/modif"})
public class modifOrDelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String marque= request.getParameter("mque");
        EntityManagerFactory emf= Persistence.createEntityManagerFactory("isjcarrent2-pu");
        EntityManager em = emf.createEntityManager();
        Iservice iservice= new ServiceImpl(em);
        Voiture voiture = iservice.findByMarque(marque);
        HttpSession httpSession = request.getSession();
        httpSession.setAttribute("vToupdate",voiture);

        request.getRequestDispatcher("modOrDel.jsp").forward(request, response);


    }
}
