package org.isj.carrent.domaine;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

//anthony
@Entity
@Table(name = "Utilisateur")
public class Utilisateur implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_user")
    private int id_user;

    @Column(name = "nom")
    private String nom;

    @Column(name = "prenom")
    private String prenom;

    @Column(name = "sexe")
    private String sexe;

    @Column(name = "age")
    private int age;

    @Column(name = "email")
    private String email;

    @Column(name = "login")
    private String login;

    @Column(name = "mdp")
    private String mdp;

    @OneToMany(mappedBy = "v_user", cascade = {CascadeType.ALL})
    private List<Voiture> voitures = new ArrayList<>();

    @OneToMany(mappedBy = "r_user")
    private List<Reservation> reservations;
    public Utilisateur(){}
    public Utilisateur(String nom, String prenom, String sexe, int age, String email, String login, String mdp) {
        this.nom = nom;
        this.prenom = prenom;
        this.sexe = sexe;
        this.age = age;
        this.email = email;
        this.login = login;
        this.mdp = mdp;
    }
   public Utilisateur(int id_user,String nom, String prenom, String sexe, int age, String email, String login, String mdp) {
        this.id_user=id_user;
        this.nom = nom;
        this.prenom = prenom;
        this.sexe = sexe;
        this.age = age;
        this.email = email;
        this.login = login;
        this.mdp = mdp;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public List<Voiture> getVoitures() {
        return voitures;
    }

    public void setVoitures(List<Voiture> voitures) {
        this.voitures = voitures;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(List<Reservation> reservations) {
        this.reservations = reservations;
    }
}
