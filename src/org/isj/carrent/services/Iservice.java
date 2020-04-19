package org.isj.carrent.services;

import org.isj.carrent.domaine.Reservation;
import org.isj.carrent.domaine.Utilisateur;
import org.isj.carrent.domaine.Voiture;
import org.isj.carrent.domaine.enumerations.StatutReservation;

import java.util.Date;
import java.util.List;

public interface Iservice {

 //constantin
    int savevoiture(Voiture voiture);//ok
    int saveuser(Utilisateur utilisateur);//ok
    int savereservation(Reservation reservation);//ok
    Utilisateur finduser(String user, String mdp);
    Utilisateur findByuser(String user);
    Voiture findByMarque(String t);

 //channel
    int deletvoiture(Voiture voiture);//ok
    int deleteuser(Utilisateur utilisateur);//ok
    int updatevoiture(Voiture voiture,Voiture v2);//ok

 //maxime
    int updateuser(Utilisateur utilisateur,String critere);
    int updatereservation(Reservation res, StatutReservation s);
    List<Voiture> searchvoiture(String consitions);
    List<Voiture> listevoitures();//ok

 //anthony
    Reservation searchReservation(String conditions, Date date);
    Reservation findReservationId(int id);
    List<Reservation> listereservations();//ok
    List<Utilisateur> listeutilisateurs();//ok

}
