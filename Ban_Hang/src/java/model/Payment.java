/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author diepv
 */
public class Payment {
    private String nameCard;
    private String numberCard;
    private String expMonth;
    private String ExpYear;
    private String CVV;

    public Payment(String nameCard, String numberCard, String expMonth, String ExpYear, String CVV) {
        this.nameCard = nameCard;
        this.numberCard = numberCard;
        this.expMonth = expMonth;
        this.ExpYear = ExpYear;
        this.CVV = CVV;
    }

    public Payment() {
    }

    public String getNameCard() {
        return nameCard;
    }

    public void setNameCard(String nameCard) {
        this.nameCard = nameCard;
    }

    public String getNumberCard() {
        return numberCard;
    }

    public void setNumberCard(String numberCard) {
        this.numberCard = numberCard;
    }

    public String getExpMonth() {
        return expMonth;
    }

    public void setExpMonth(String expMonth) {
        this.expMonth = expMonth;
    }

    public String getExpYear() {
        return ExpYear;
    }

    public void setExpYear(String ExpYear) {
        this.ExpYear = ExpYear;
    }

    public String getCVV() {
        return CVV;
    }

    public void setCVV(String CVV) {
        this.CVV = CVV;
    }
    
    
}
