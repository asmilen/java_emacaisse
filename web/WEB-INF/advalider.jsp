<%-- 
    Document   : advalider
    Created on : 8 avr. 2018, 15:03:49
    Author     : samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-locale="fr_FR" lang="fr">
    <head>
        <meta charset="utf-8" />
        <title>Affichage du covoituraget</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="info">${ message }</p>
        <%-- Puis affichage des données enregistrées dans le bean "client" transmis par la servlet --%>
        <p>Ville de départ : ${ annonce.villeDepart }</p>
        <p>Ville d'arrivée: ${ annonce.villeArrivé }</p>
        <p>Date de départ : ${ annonce.dateDepart }</p>
        <p>Date de retour : ${ annonce.dateRetour}</p>
        <p>heure de départ : ${ annonce.heureDepart }</p>
        <p>heure de Retour : ${ annonce.heureRetour }</p>
    </body>
