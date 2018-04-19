<%-- 
    Document   : ad
    Created on : 5 avr. 2018, 11:33:34
    Author     : samuel
--%>

<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html data-locale="fr_FR" lang="fr">
    <head>
        <meta charset="utf-8" />
        <title>Création d'une annonce</title>
        <link type="text/css" rel="stylesheet" href="css/newcss.css" />
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div align="center">
                <h1>Ema'blacar</h1>
            </div>
            <div align="center">
                <h2>Proposer un covoiturage!</h2>
            </div>
        </header>
        <div align="center" class="table">
            <form method="post" action="advalider">
                <fieldset>
                    <legend>Trajet proposé</legend>
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="villeDepart"> Ville de départ <span class="requis">*</span></label>
                        </div>
                        <div class="col-lg-8">
                            <input type="text" id="villeDepart" name="villeDepart" value="" size="20" maxlength="20" required/>
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="villeArrivee">Ville d'arrivée </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="text" id="villeArrivee" name="villeArrivee" value="" size="20" maxlength="20" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="villeIntermediare">Villes intérmediares <span class="requis">*</span></label>
                        </div>
                        <div class="col-lg-8">
                            <input type="text" id="villeIntermediaire" name="villeIntermediare" value="" size="20" maxlength="20" required/>
                        </div>
                    </div>

                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="dateDepart">Date de départ <span class="requis">*</span></label>
                        </div>
                        <div class="col-lg-8">
                            <input type="date" id="dateDepart" name="dateDepart" value="" size="20" maxlength="20" required />
                        </div>
                    </div>

                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="heureDepart">Heure de départ</label>
                        </div>
                        <div class="col-lg-8">
                            <input type="time" id="heureDepart" name="heureDepart" value="" size="20" maxlength="60" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="dateRetour">Date de retour </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="date" id="dateRetour" name="dateRetour" value="" size="20" maxlength="20" required />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="heureRetour">Heure de Retour</label>
                        </div>
                        <div class="col-lg-8">
                            <input type="time" id="heureRetour" name="heureRetour" value="" size="20" maxlength="60" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="PlaceBaguages">Place pour les baguages </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="text" id="PlaceBaguages" name="PlaceBaguages" value="" size="20" maxlength="20" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="NombrePlaces">Nombre de places </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="number" id="NombrePlaces" name="NombrePlaces" value="" size="20" maxlength="20" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4">
                            <label for="Prix">Prix </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="number" id="Prix" name="Prix" value="" size="20" maxlength="20" />
                        </div>
                    </div>
                    <br />
                </fieldset>
                <br><br><br>
                <div>
                    <input class="btn btn-success"  type="submit" value="Valider"  />
                    <input class="btn btn-danger"  type="reset"  value="Annuler" />
                </div>
            </form>
        </div>
        <div align="center">
            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d22910.6084721741!2d4.1007264!3d44.1282098!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sfr!2sfr!4v1522951270190" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </body>
</html>