/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author diepv
 */
public class Bill {
    private long billID;
    private long userID;
    private double total;
    private String numberCard;
    private String address;
    private Timestamp date;
    private String fullName;
    private String city;

    public Bill() {
    }

    public Bill(long billID, long userID, double total, String numberCard, String address, Timestamp date, String fullName, String city) {
        this.billID = billID;
        this.userID = userID;
        this.total = total;
        this.numberCard = numberCard;
        this.address = address;
        this.date = date;
        this.fullName = fullName;
        this.city = city;
    }

    public long getBillID() {
        return billID;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getNumberCard() {
        return numberCard;
    }

    public void setNumberCard(String numberCard) {
        this.numberCard = numberCard;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    
    

    
    
    
}
