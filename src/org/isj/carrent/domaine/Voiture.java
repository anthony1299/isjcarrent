package org.isj.carrent.domaine;
//maxime

import org.isj.carrent.domaine.enumerations.Transmission;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Voiture")
public class Voiture implements Serializable {
    @Id
    @GeneratedValue(strategy =GenerationType.AUTO)
    @Column(name = "id_voiture")
    private int id_voiture;

    @Column(name = "marque")
    private String marque;

    @Column(name = "nb_porte")
    private String nb_porte;

    @Column(name = "prix_jour")
    private int prix_jour;

    @Column(name = "image")
    private String image;

    @Column(name = "nb_place")
    private String nb_place;

    @Column(name = "standing")
    private String standing;

    @Column(name = "transmission")
    private Transmission transmission;

    @Column(name = "statut")
    private String statut;

    @OneToMany(mappedBy = "r_id_voiture")
    private List<Reservation> v_reservations;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_user", nullable = false)
    private Utilisateur v_user;

    public Voiture() {
    }

    public Voiture( String marque, String nb_porte, int prix_jour, String image, String nb_place, String standing, Transmission transmission, String statut, Utilisateur utilisateur) {
        this.marque = marque;
        this.nb_porte = nb_porte;
        this.prix_jour = prix_jour;
        this.image = image;
        this.nb_place = nb_place;
        this.standing = standing;
        this.transmission = transmission;
        this.statut = statut;
        this.v_user = utilisateur;
    }

    public int getId_voiture() {
        return id_voiture;
    }

    public void setId_voiture(int id_voiture) {
        this.id_voiture = id_voiture;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public String getNb_porte() {
        return nb_porte;
    }

    public void setNb_porte(String nb_porte) {
        this.nb_porte = nb_porte;
    }

    public int getPrix_jour() {
        return prix_jour;
    }

    public void setPrix_jour(int prix_jour) {
        this.prix_jour = prix_jour;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNb_place() {
        return nb_place;
    }

    public void setNb_place(String nb_place) {
        this.nb_place = nb_place;
    }

    public String getStanding() {
        return standing;
    }

    public void setStanding(String standing) {
        this.standing = standing;
    }

    public Transmission getTransmission() {
        return transmission;
    }

    public void setTransmission(Transmission transmission) {
        this.transmission = transmission;
    }

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    public List<Reservation> getV_reservations() {
        return v_reservations;
    }

    public void setV_reservations(List<Reservation> v_reservations) {
        this.v_reservations = v_reservations;
    }

    public Utilisateur getV_user() {
        return v_user;
    }

    public void setV_user(Utilisateur v_user) {
        this.v_user = v_user;
    }
}
