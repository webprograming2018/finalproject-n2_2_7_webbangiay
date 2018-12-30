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
public class ProductUser {
    private int iduser;
    private int idProduct;
    private int quantity;

    public ProductUser() {
    }

    public ProductUser(int iduser, int idProduct, int quantity) {
        this.iduser = iduser;
        this.idProduct = idProduct;
        this.quantity = quantity;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    
}
