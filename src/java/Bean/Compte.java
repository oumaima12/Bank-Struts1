/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.sql.Date;


public class Compte {
      int idCompte;
    String idClient;
    String dateCreation;
    double solde; 

    public Compte() {
    }

    public Compte(int idCompte, String idClient, String dateCreation, double solde) {
        this.idCompte = idCompte;
        this.idClient = idClient;
        this.dateCreation = dateCreation;
        this.solde = solde;
    }

    public int getIdCompte() {
        return idCompte;
    }

    public void setIdCompte(int idCompte) {
        this.idCompte = idCompte;
    }

    public String getIdClient() {
        return idClient;
    }

    public void setIdClient(String idClient) {
        this.idClient = idClient;
    }

    public String getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(String dateCreation) {
        this.dateCreation = dateCreation;
    }

    public double getSolde() {
        return solde;
    }

    public void setSolde(double solde) {
        this.solde = solde;
    }
    
}
