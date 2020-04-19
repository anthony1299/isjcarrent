package org.isj.carrent.dao;

import org.isj.carrent.domaine.Client;
import org.isj.carrent.domaine.Reservation;
import org.isj.carrent.domaine.Utilisateur;
import org.isj.carrent.domaine.Voiture;
import org.isj.carrent.domaine.enumerations.StatutReservation;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.rmi.CORBA.Util;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DaoImpl implements IDao {

    private EntityManager em;

    public DaoImpl(EntityManager em) {
        this.em = em;
    }
    @Override
    public int savevoitureDao(Voiture voiture) {
        try{
             EntityTransaction tx =  em.getTransaction();
             tx.begin();
             em.persist(voiture);
             tx.commit();
        }
        catch (Exception e){
            e.printStackTrace();
            return 0;
        }

        return 1;
    }

    @Override
    public int saveuserDao(Utilisateur utilisateur) {
        try{
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            em.persist(utilisateur);
            tx.commit();
        }
        catch (Exception e){
            e.printStackTrace();
            return 0;
        }

        return 1;
    }

    @Override
    public int savereservationDao(Reservation reservation) {
        try{
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            em.persist(reservation);
            tx.commit();
        }
        catch (Exception e){
            e.printStackTrace();
            return 0;
        }

        return 1;
    }

    @Override
    public int saveclient(Client client) {
        try{
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            em.persist(client);
            tx.commit();
        }
        catch (Exception e){
            e.printStackTrace();
            return 0;
        }

        return 1;


    }


    @Override
    public Voiture findByMarque(String marque) {
        try {
            Voiture v;
            EntityTransaction tx =  em.getTransaction();
            tx.begin();

            v= em.createQuery("from Voiture v where v.marque = :mq", Voiture.class)
                    .setParameter("mq", marque).getSingleResult();

            tx.commit();
            return v;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public Utilisateur findByUser(String name) {
        try {
            Utilisateur user;
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            user= em.createQuery("from Utilisateur u where u.login = :t", Utilisateur.class)
                    .setParameter("t", name).getSingleResult();
            System.out.println(user.getNom());
            tx.commit();
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;

        }

    }

    @Override
    public Utilisateur findByUserAndMdp(String u, String mdp) {
        try {
            Utilisateur user;
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            user= em.createQuery("from Utilisateur u where u.login = :t and u.mdp = :m", Utilisateur.class)
                    .setParameter("t", u)
                    .setParameter("m", mdp)
                    .getSingleResult();
            System.out.println(user.getNom());
            tx.commit();
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;

        }

    }

    @Override
    public Client findByNameClient(String name) {
        try {
            Client cl;
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            cl= em.createQuery("from Client c where c.nom = :t", Client.class)
                    .setParameter("t", name).getSingleResult();

            tx.commit();
            return cl;
        } catch (Exception e) {
            e.printStackTrace();
            return null;

        }

    }

    @Override
    public int deletvoitureDao(Voiture voiture) {
        try {

            // 2 : Ouverture transaction
            EntityTransaction tx =  em.getTransaction();
            tx.begin();

            em.remove(voiture);
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();

             return 0;
        }


        return 1;
    }

    @Override
    public int deleteuserDao(Utilisateur utilisateur) {
        try{
            EntityTransaction tx= em.getTransaction();
            tx.begin();
            em.remove(utilisateur);
            tx.commit();

        }catch (Exception e)
        {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int updatevoitureDao(Voiture voiture, Voiture v2) {
        try {
            int id = voiture.getId_voiture();
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            em.createQuery("UPDATE Voiture v set v.marque = :m ,v.nb_place =: n," +
                    " v.nb_porte =: o ," +
                    " v.prix_jour =: p," +
                    " v.transmission =: q ," +
                    " v.image =: r ," +
                    " v.standing =: s ," +
                    " v.statut =: t where v.id_voiture= :i ")
                    .setParameter("m", v2.getMarque())
                    .setParameter("n",v2.getNb_place())
                    .setParameter("o",v2.getNb_porte())
                    .setParameter("p",v2.getPrix_jour())
                    .setParameter("q",v2.getTransmission())
                    .setParameter("r",v2.getImage())
                    .setParameter("s",v2.getStanding())
                    .setParameter("t",v2.getStatut())
                    .setParameter("i",voiture.getId_voiture())
                    .executeUpdate();

            tx.commit();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public int updateuserDao(Utilisateur utilisateur, String critere) {

        return 0;
    }

    @Override
    public int updatereservationStatutDao(Reservation r, StatutReservation s) {
        try {
            int id = r.getId();
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            em.createQuery("UPDATE Reservation r set r.statut = :m where r.id = :t")
                    .setParameter("m", s)
                    .setParameter("t",id)
                    .executeUpdate();
            tx.commit();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public List<Voiture> searchvoitureDao(String consitions) {
        List<Voiture> voitureM= new ArrayList<Voiture>();
        try {
            Voiture v;
            EntityTransaction tx =  em.getTransaction();
            tx.begin();

            voitureM= em.createQuery("from Voiture v where v.marque = :t", Voiture.class)
            .setParameter("t",consitions).getResultList();

            tx.commit();
            return voitureM;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }    }

    @Override
    public Reservation searchReservationDao(String name, Date date) {
        try {
            Reservation reservation;
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            reservation= em.createQuery("from Reservation r where r.r_user = :name and r.date =: date", Reservation.class)
                    .setParameter("t", name).getSingleResult();

            tx.commit();
            return reservation;
        } catch (Exception e) {
            e.printStackTrace();
            return null;

        }
    }

    @Override
    public Reservation findReservationIdDao(int id) {
        try {
            Reservation reservation;
            EntityTransaction tx =  em.getTransaction();
            tx.begin();
            reservation= em.createQuery("from Reservation r where r.id = :t", Reservation.class)
                    .setParameter("t", id).getSingleResult();

            tx.commit();
            return reservation;
        } catch (Exception e) {
            e.printStackTrace();
            return null;

        }
    }

    @Override
    public List<Voiture> listevoituresDao() {
        List<Voiture> listvoiture= new ArrayList<Voiture>();
        try{

            EntityTransaction tx = em.getTransaction();
            tx.begin();
            listvoiture=em.createQuery("from Voiture",Voiture.class).getResultList();
            tx.commit();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return listvoiture;
    }

    @Override
    public List<Reservation> listereservationsDao() {
        List<Reservation> listreservation= new ArrayList<Reservation>();
        try{

            EntityTransaction tx = em.getTransaction();
            tx.begin();
            listreservation=em.createQuery("from Reservation",Reservation.class).getResultList();
            tx.commit();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return listreservation;
    }

    @Override
    public List<Utilisateur> listeutilisateursDao() {
        List<Utilisateur> listutilisateur= new ArrayList<Utilisateur>();
        try{

            EntityTransaction tx = em.getTransaction();
            tx.begin();
            listutilisateur=em.createQuery("from Utilisateur",Utilisateur.class).getResultList();
            tx.commit();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return listutilisateur;
    }
}
