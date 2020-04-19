package org.isj.carrent.domaine;

import org.isj.carrent.domaine.enumerations.StatutReservation;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Reservation")
public class Reservation implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_reservation")
    private int id;

    @ManyToOne
    @JoinColumn(name = "r_id_client")
    private Client cli;

    @ManyToOne
    @JoinColumn(name = "r_id_voiture")
    private Voiture r_id_voiture;

    private StatutReservation statut;

    private Date date_depart;
    private Date date_retour;

    @Column(name = "nbre_jours")
    private int nbre_jours;

    @ManyToOne
    @JoinColumn(name = "r_user")
    private Utilisateur r_user;



    public Reservation() {
    }

    public Reservation(Client cli, Voiture r_id_voiture, StatutReservation statut, Date date_depart, Date date_retour) {
        this.cli = cli;
        this.r_id_voiture = r_id_voiture;
        this.statut = statut;
        this.date_depart = date_depart;
        this.date_retour = date_retour;
    }

    public Date getDate_depart() {
        return date_depart;
    }

    public void setDate_depart(Date date_depart) {
        this.date_depart = date_depart;
    }

    public Date getDate_retour() {
        return date_retour;
    }

    public void setDate_retour(Date date_retour) {
        this.date_retour = date_retour;
    }

    public int getNbre_jours() {
        return nbre_jours;
    }

    public void setNbre_jours(int nbre_jours) {
        this.nbre_jours = nbre_jours;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Client getCli() {
        return cli;
    }

    public void setCli(Client cli) {
        this.cli = cli;
    }

    public Voiture getR_id_voiture() {
        return r_id_voiture;
    }

    public void setR_id_voiture(Voiture r_id_voiture) {
        this.r_id_voiture = r_id_voiture;
    }

    public StatutReservation getStatut() {
        return statut;
    }

    public void setStatut(StatutReservation statut) {
        this.statut = statut;
    }

    public Utilisateur getR_user() {
        return r_user;
    }

    public void setR_user(Utilisateur r_user) {
        this.r_user = r_user;
    }
}
