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
        this.villeIntermediaire = villeIntermediaire;
    }

    /* LINK WITH THE DATA BASE */
    
    /* La liste qui permet de savoir ou ca plante */
    private List<String> etatBDD = new ArrayList<String>();

    public List<String> executerTests( HttpServletRequest request ) {
    /* Chargement du driver JDBC pour MySQL */
    try {
        etatBDD.add( "Chargement du driver..." );
        Class.forName( "com.mysql.jdbc.Driver" );
        etatBDD.add( "Driver chargé !" );
    } catch ( ClassNotFoundException e ) {
        etatBDD.add( "Erreur lors du chargement : le driver n'a pas été trouvé dans le classpath ! <br/>"
                + e.getMessage() );
    }

    /* Connexion à la base de données */
    String url = "jdbc:mysql://localhost:3306/ema-caisse"; // a changer lors de la connection avec le serveur de l'ecole
    String utilisateur = "Zebi"; // A SIGNALER AU GROUPE
    String motDePasse = "Zebi";  // IDEM
    Connection connexion = null;
    Statement statement = null;
    ResultSet resultat = null;
    try {
        etatBDD.add( "Connexion à la base de données..." );
        connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
        etatBDD.add( "Connexion réussie !" );

        /* Création de l'objet gérant les requêtes */
        statement = connexion.createStatement();
        etatBDD.add( "Objet requête créé !" );

        /* Exécution d'une requête de lecture */
        resultat = statement.executeQuery( ";" );  // mettre la commande sql qui enregistre le voyage dans la bdd
        etatBDD.add( "Requête \";\" effectuée !" );
 
    } catch ( SQLException e ) {
        etatBDD.add( "Erreur lors de la connexion : <br/>"
                + e.getMessage() );
    } finally {
        etatBDD.add( "Fermeture de l'objet ResultSet." );
        if ( resultat != null ) {
            try {
                resultat.close();
            } catch ( SQLException ignore ) {
            }
        }
        etatBDD.add( "Fermeture de l'objet Statement." );
        if ( statement != null ) {
            try {
                statement.close();
            } catch ( SQLException ignore ) {
            }
        }
        etatBDD.add( "Fermeture de l'objet Connection." );
        if ( connexion != null ) {
            try {
                connexion.close();
            } catch ( SQLException ignore ) {
            }
        }
    }

    return etatBDD;
}
    
}
