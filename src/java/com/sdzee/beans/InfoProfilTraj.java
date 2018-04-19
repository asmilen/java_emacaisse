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
 * @author Sacha
 */
public class InfoProfilTraj {
    private List<String> etatBDD = new ArrayList<>();
    
    
    /*
    return in this position first name, last name, phone number and the description of the driver's car
    */
    public List<String> executerTests( HttpServletRequest request, int idConducteur ) {
    List<String> infos = new ArrayList<>();
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
    String url = "jdbc:mysql://localhost:3306/ema_caisse"; // a changer lors de la connection avec le serveur de l'ecole
    String utilisateur = "root"; // A SIGNALER AU GROUPE
    String motDePasse = "";  // IDEM
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
            
        /* conversion en String de idConducteur */
        String id = String.valueOf(idConducteur);

        /* Exécution de la requete d'enregistrement du trajet */
        resultat = statement.executeQuery( "SELECT first_name,last_name,phone,car_description WHERE user_id="+id);  // mettre la commande sql qui enregistre le voyage dans la bdd
        infos.add(resultat.getString("first_name"));
        infos.add(resultat.getString("last_name"));
        infos.add(resultat.getString("phone"));
        infos.add(resultat.getString("car_description"));
        etatBDD.add( "Requête sql effectuée !" );
 
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

    return infos;
}
}
