/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sdzee.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.sdzee.beans.Ad;
import java.util.List;

/**
 *
 * @author samuel
 */

@WebServlet(name = "Ad", urlPatterns = {"/Ad"})
public class AdServlets extends HttpServlet {

    public static final String VUE = "/WEB-INF/ad.jsp";
	
    @Override
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
         /*
         * Récupération des données saisies, envoyées en tant que paramètres de
         * la requête GET générée à la validation du formulaire
         */
        String villeDepart = request.getParameter( "villeDepart" );
        String villeArrivee = request.getParameter( "villeArrivee" );
        String villeIntermediaire = request.getParameter( "villeIntermediaire" );
        String dateDepart = request.getParameter( "dateDepart" );
        String dateRetour = request.getParameter( "dateRetour" );
        String heureDepart= request.getParameter( "heureDepart" );
        String heureRetour= request.getParameter( "heureRetour" );
        
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
        try {
            Date date1 = sdf.parse(dateDepart);
        } catch (ParseException ex) {
            Logger.getLogger(AdServlets.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            Date date2 = sdf.parse(dateRetour);
        } catch (ParseException ex) {
            Logger.getLogger(AdServlets.class.getName()).log(Level.SEVERE, null, ex);
        }
        DateFormat formatter = new SimpleDateFormat("HH:mm");
        try {
            Date time1 = sdf.parse(heureDepart);
        } catch (ParseException ex) {
            Logger.getLogger(AdServlets.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            Date time2 = sdf.parse(heureRetour);
        } catch (ParseException ex) {
            Logger.getLogger(AdServlets.class.getName()).log(Level.SEVERE, null, ex);
        }
             String message;
        /*
         * Initialisation du message à afficher : si un des champs obligatoires
         * du formulaire n'est pas renseigné, alors on affiche un message
         * d'erreur, sinon on affiche un message de succès
         */
        if ( villeDepart.trim().isEmpty() || villeArrivee.trim().isEmpty() || dateDepart.trim().isEmpty() || dateRetour.trim().isEmpty() || heureDepart.trim().isEmpty() || heureRetour.trim().isEmpty() ) {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"Ad.jsp\">Cliquez ici</a> pour accéder au formulaire de proposition de covoiturage.";
        } else {
            message = "Proposition faite avec succès !";
            
         /*
         * Création du beans annonce et initialisation avec les
         * données récupérées
         */   
        Ad annonce = new Ad();
        annonce.setVilleDepart( villeDepart );
        annonce.setVilleArrivé( villeArrivee );
        annonce.setDateDepart( dateDepart );
        annonce.setDateRetour( dateRetour );
        annonce.setHeureDepart(heureDepart);
        annonce.setHeureRetour( heureRetour );
        annonce.setVilleIntermediaire( villeIntermediaire );

        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( "annonce", annonce );
        request.setAttribute( "message", message );
        
        /* Link with the data base */
        List<String> etatBDD = annonce.executerTests( request );

        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher( "/advalider.jsp" ).forward( request, response );
        }
    }
}
