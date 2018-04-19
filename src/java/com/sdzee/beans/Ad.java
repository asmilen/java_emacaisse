/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sdzee.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author samuel
 */
public class Ad {
      /* Propriétés du bean */
    private String villeDepart;
    private String villeArrivé;
    private String villeIntermediaire;
    private String dateDepart;
    private String heureDepart;
    private String dateRetour;
    private String heureRetour;
    private String Prix;
    private String NombrePlaces;
    private String PlacesBaguages;

    /**
     * @return the villeDepart
     */
    public String getVilleDepart() {
        return villeDepart;
    }

    /**
     * @param villeDepart the villeDepart to set
     */
    public void setVilleDepart(String villeDepart) {
        this.villeDepart = villeDepart;
    }

    /**
     * @return the villeArrivé
     */
    public String getVilleArrivé() {
        return villeArrivé;
    }

    /**
     * @param villeArrivé the villeArrivé to set
     */
    public void setVilleArrivé(String villeArrivé) {
        this.villeArrivé = villeArrivé;
    }

   

    /**
     * @return the dateDepart
     */
    public String getDateDepart() {
        return dateDepart;
    }

    /**
     * @param dateDepart the dateDepart to set
     */
    public void setDateDepart(String dateDepart) {
        this.dateDepart = dateDepart;
    }

    /**
     * @return the heureDepart
     */
    public String getHeureDepart() {
        return heureDepart;
    }

    /**
     * @param heureDepart the heureDepart to set
     */
    public void setHeureDepart(String heureDepart) {
        this.heureDepart = heureDepart;
    }

    /**
     * @return the dateRetour
     */
    public String getDateRetour() {
        return dateRetour;
    }

    /**
     * @param dateRetour the dateRetour to set
     */
    public void setDateRetour(String dateRetour) {
        this.dateRetour = dateRetour;
    }

    /**
     * @return the heureRetour
     */
    public String getHeureRetour() {
        return heureRetour;
    }

    /**
     * @param heureRetour the heureRetour to set
     */
    public void setHeureRetour(String heureRetour) {
        this.heureRetour = heureRetour;
    }

    /**
     * @return the villeIntermediaire
     */
    public String getVilleIntermediaire() {
        return villeIntermediaire;
    }

    /**
     * @param villeIntermediaire the villeIntermediaire to set
     */
    public void setVilleIntermediaire(String villeIntermediaire) {
        this.villeIntermediaire=villeIntermediaire;
    }

    /* LINK WITH THE DATA BASE */
    
    /* La liste qui permet de savoir ou ca plante */
    private List<String> etatBDD = new ArrayList<>();

    public List<String> executerTests( HttpServletRequest request ) {
    /* Chargement du driver JDBC pour MySQL */
    try {
            getEtatBDD().add( "Chargement du driver..." );
        Class.forName( "com.mysql.jdbc.Driver" );
            getEtatBDD().add( "Driver chargé !" );
    } catch ( ClassNotFoundException e ) {
            getEtatBDD().add( "Erreur lors du chargement : le driver n'a pas été trouvé dans le classpath ! <br/>"
                + e.getMessage() );
    }

    /* Connexion à la base de données */
    String url = "jdbc:mysql://localhost:3306/ema_caisse"; // a changer lors de la connection avec le serveur de l'ecole
    String utilisateur = "root"; // A SIGNALER AU GROUPE
    String motDePasse = "";  // IDEM
    Connection connexion = null;
    Statement statement = null;
    ResultSet resultat = null;
    try {
            getEtatBDD().add( "Connexion à la base de données..." );
        connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
            getEtatBDD().add( "Connexion réussie !" );

        /* Création de l'objet gérant les requêtes */
        statement = connexion.createStatement();
            getEtatBDD().add( "Objet requête créé !" );
        
        /* Recuperation de du user_id */
        String mail = session.getAttribute("email");
        resultat = statement.executeQuery("SELECT id FROM users WHERE email="+mail);
        String user_id  = resultat.getInt("id");
        resultat = null;

        /* Exécution de la requete d'enregistrement du trajet */
        resultat = statement.executeQuery( "INSERT INTO ride(user_id,travel_start_time,travel_start_date,travel_return_time,"
                + "travel_return_date,source_city,destination_city,seats_offered,contribution_per_head,luggage_size)"
                + "(USER_ID,'"+heureDepart+"','"+dateDepart+"','"+this.heureRetour+"','"+this.dateRetour+"',"
                + "'"+this.villeDepart+"','"+this.villeArrivé+"','"+this.NombrePlaces+"','"+this.Prix+"','"+this.PlacesBaguages+"')");  // mettre la commande sql qui enregistre le voyage dans la bdd
            getEtatBDD().add( "Requête sql effectuée !" );
 
    } catch ( SQLException e ) {
            getEtatBDD().add( "Erreur lors de la connexion : <br/>"
                + e.getMessage() );
    } finally {
            getEtatBDD().add( "Fermeture de l'objet ResultSet." );
        if ( resultat != null ) {
            try {
                resultat.close();
            } catch ( SQLException ignore ) {
            }
        }
            getEtatBDD().add( "Fermeture de l'objet Statement." );
        if ( statement != null ) {
            try {
                statement.close();
            } catch ( SQLException ignore ) {
            }
        }
            getEtatBDD().add( "Fermeture de l'objet Connection." );
        if ( connexion != null ) {
            try {
                connexion.close();
            } catch ( SQLException ignore ) {
            }
        }
    }

    return getEtatBDD();
}

 

    /**
     * @return the Prix
     */
    public String getPrix() {
        return Prix;
    }

    /**
     * @param Prix the Prix to set
     */
    public void setPrix(String Prix) {
        this.Prix = Prix;
    }

    /**
     * @return the NombrePlaces
     */
    public String getNombrePlaces() {
        return NombrePlaces;
    }

    /**
     * @param NombrePlaces the NombrePlaces to set
     */
    public void setNombrePlaces(String NombrePlaces) {
        this.NombrePlaces = NombrePlaces;
    }

    /**
     * @return the PlacesBaguages
     */
    public String getPlacesBaguages() {
        return PlacesBaguages;
    }

    /**
     * @param PlacesBaguages the PlacesBaguages to set
     */
    public void setPlacesBaguages(String PlacesBaguages) {
        this.PlacesBaguages = PlacesBaguages;
    }

    /**
     * @return the etatBDD
     */
    public List<String> getEtatBDD() {
        return etatBDD;
    }

    /**
     * @param etatBDD the etatBDD to set
     */
    public void setEtatBDD(List<String> etatBDD) {
        this.etatBDD = etatBDD;
    }

    private void villeIntermediaire(String villeIntermediaire) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
