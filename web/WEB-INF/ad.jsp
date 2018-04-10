<%-- 
    Document   : ad
    Created on : 5 avr. 2018, 11:33:34
    Author     : samuel
--%>

<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'une annonce</title>
        <link type="text/css" rel="stylesheet" href="newcss.css" />
    </head>
    <body>
        <header>
            <h1>Ema'blacar</h1>
            <h2>proposer un covoiturage!</h2>
        </header>
        <div>
            <form method="get" action="créationAnnonce">
                <fieldset>
                    <legend>Trajet proposé</legend>
    
                    <label for="villeDepart"> Ville de départ <span class="requis">*</span></label>
                    <input type="text" id="villeDepart" name="villeDepart" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="villeArrivee">Ville d'arrivée </label>
                    <input type="text" id="villeArrivee" name="villeArrivee" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="villeIntermediare">Villes intérmediares <span class="requis">*</span></label>
                    <input type="List" id="villeIntermediaire" name="villeIntermediare" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="dateDepart">Date de départ <span class="requis">*</span></label>
                    <input type="date" id="dateDepart" name="dateDepart" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="heureDepart">Heure de départ</label>
                    <input type="time" id="heureDepart" name="heureDepart" value="" size="20" maxlength="60" />
                    <br />
                    <label for="dateRetour">Date de retour <span class="requis">*</span></label>
                    <input type="date" id="dateRetour" name="dateRetour" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="heureRetour">Heure de Retour</label>
                    <input type="time" id="heureRetour" name="heureRetour" value="" size="20" maxlength="60" />
                    <br />
                </fieldset>
                <bouton>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Annuler" /> <br />
                </bouton>
            </form>
        </div>
        <aside>
            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d22910.6084721741!2d4.1007264!3d44.1282098!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfr!2sfr!4v1522951270190" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </aside>
        
    </body>
</html>