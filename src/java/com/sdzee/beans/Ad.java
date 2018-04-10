/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sdzee.beans;

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

    
}
