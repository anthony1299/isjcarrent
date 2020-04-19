package org.isj.carrent.dao;

import org.isj.carrent.domaine.Client;
import org.isj.carrent.domaine.Reservation;
import org.isj.carrent.domaine.Utilisateur;
import org.isj.carrent.domaine.Voiture;
import org.isj.carrent.domaine.enumerations.StatutReservation;

import java.util.Date;
import java.util.List;

public interface IDao {
//constantin
    int savevoitureDao(Voiture voiture);//ok
    int saveuserDao(Utilisateur utilisateur);//ok
    int savereservationDao(Reservation reservation);//ok
    int saveclient(Client client);//ok


//channel
    int deletvoitureDao(Voiture voiture);//ok
    int deleteuserDao(Utilisateur utilisateur);//ok
    int updatevoitureDao(Voiture voiture,Voiture v2);//ok

 //maxime
    int updateuserDao(Utilisateur utilisateur,String critere);
    int updatereservationStatutDao(Reservation reservation, StatutReservation s);
    List<Voiture> searchvoitureDao(String conditions);
    List<Voiture> listevoituresDao();//ok

 //anthony
    Reservation searchReservationDao(String name, Date date);
    Reservation findReservationIdDao(int id);
    List<Reservation> listereservationsDao();//ok
    List<Utilisateur> listeutilisateursDao();//ok

    Voiture findByMarque(String v);//ok
    Utilisateur findByUser(String u);//ok
    Utilisateur findByUserAndMdp(String u,String mdp);//ok
    Client findByNameClient(String u);//ok
}
