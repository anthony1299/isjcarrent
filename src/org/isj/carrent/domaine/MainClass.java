package org.isj.carrent.domaine;

import org.hibernate.internal.EntityManagerMessageLogger;
import org.isj.carrent.domaine.enumerations.StatutReservation;
import org.isj.carrent.domaine.enumerations.Transmission;
import org.isj.carrent.services.Iservice;
import org.isj.carrent.services.ServiceImpl;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.rmi.CORBA.Util;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MainClass {
    public static void main (String [] args){
        EntityManagerFactory emf= Persistence.createEntityManagerFactory("isjcarrent2-pu");
        EntityManager em = emf.createEntityManager();
        Iservice service = new ServiceImpl(em);
        List<Voiture> b;
        Utilisateur u = new Utilisateur("Dabbagh","Elie","Masculin",15,"aelie15@yahoo.fr","elie2","ok");
        service.saveuser(u);

        /*Voiture v = new Voiture("Toyota","4","4500", "2262","6","haut", Transmission.Automatique,"dispo",u);
        service.savevoiture(v);
       Client client = new Client("Fouda","Anthony","Masculin",15,"anthonyfouda@gmail.com");
        Date d= new Date();
        Reservation res= new Reservation(client,v, StatutReservation.Attente, d);
        service.savereservation(res);
       /* System.out.println(v.getTransmission());
        service.deletvoiture(v);
        System.out.println(em.find(Utilisateur.class,u).getNom());*/
       //b= service.searchvoiture("Toyota");


       }

    }

