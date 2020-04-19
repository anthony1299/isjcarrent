package org.isj.carrent.services;

import org.isj.carrent.dao.DaoImpl;
import org.isj.carrent.dao.IDao;
import org.isj.carrent.domaine.Client;
import org.isj.carrent.domaine.Reservation;
import org.isj.carrent.domaine.Utilisateur;
import org.isj.carrent.domaine.Voiture;
import org.isj.carrent.domaine.enumerations.StatutReservation;

import javax.persistence.EntityManager;
import java.util.Date;
import java.util.List;

public class ServiceImpl implements Iservice {

    private IDao dao;
    private  Utilisateur u;
    private Client c;
    private Voiture v;

    public ServiceImpl(EntityManager em) {
        this.dao=new DaoImpl(em);
    }

    @Override
    public int savevoiture(Voiture voiture) {
        u=dao.findByUser(voiture.getV_user().getLogin());
        System.out.println(u.getNom());
        voiture.setV_user(u);
        return dao.savevoitureDao(voiture);
    }

    @Override
    public int saveuser(Utilisateur utilisateur) {
        return dao.saveuserDao(utilisateur);
    }

    @Override
    public int savereservation(Reservation reservation) {
        dao.saveclient(reservation.getCli());
        c=dao.findByNameClient(reservation.getCli().getNom());
        reservation.setCli(c);
        v=dao.findByMarque(reservation.getR_id_voiture().getMarque());
        reservation.setR_id_voiture(v);
        return dao.savereservationDao(reservation);
    }

    @Override
    public Utilisateur finduser(String user, String mdp) {
        return dao.findByUserAndMdp(user,mdp);
    }

    @Override
    public Utilisateur findByuser(String user) {
        return dao.findByUser(user);
    }

    @Override
    public Voiture findByMarque(String t) {
        return dao.findByMarque(t);
    }

    @Override
    public int deletvoiture(Voiture voiture) {
        v=dao.findByMarque(voiture.getMarque());
        return dao.deletvoitureDao(v);
    }

    @Override
    public int deleteuser(Utilisateur utilisateur) {
        u=dao.findByUser(utilisateur.getNom());
        return dao.deleteuserDao(u);
    }

    @Override
    public int updatevoiture(Voiture voiture, Voiture v2) {
        v=dao.findByMarque(voiture.getMarque());
        return dao.updatevoitureDao(v,v2);
    }

    @Override
    public int updateuser(Utilisateur utilisateur, String critere) {
        return 0;
    }

    @Override
    public int updatereservation(Reservation res, StatutReservation s)
    {
        return dao.updatereservationStatutDao(res,s);
    }

    @Override
    public List<Voiture> searchvoiture(String consitions) {
        return dao.searchvoitureDao(consitions);
    }

    @Override
    public Reservation searchReservation(String conditions, Date date) {
        return dao.searchReservationDao(conditions, date);
    }

    @Override
    public Reservation findReservationId(int id) {
        return dao.findReservationIdDao(id);
    }

    @Override
    public List<Voiture> listevoitures() {
        return dao.listevoituresDao();
    }

    @Override
    public List<Reservation> listereservations() {
        return dao.listereservationsDao();
    }

    @Override
    public List<Utilisateur> listeutilisateurs() {
        return dao.listeutilisateursDao();
    }
}
