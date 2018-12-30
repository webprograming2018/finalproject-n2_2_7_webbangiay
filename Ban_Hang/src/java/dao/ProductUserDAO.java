/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.ProductUser;

/**
 *
 * @author diepv
 */
public class ProductUserDAO {
    public void insert(ProductUser a){
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO product_user VALUES(?,?,?)";
        try {
             PreparedStatement ps = connection.prepareCall(sql);
             ps.setLong(2, a.getIdProduct());
             ps.setInt(1, a.getIduser());
             ps.setInt(3, a.getQuantity());
             ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public ArrayList<ProductUser> pick(long id) throws SQLException{
        ArrayList<ProductUser> list = new ArrayList<ProductUser>();
        ProductUser p = new ProductUser();
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product_user WHERE iduser=" + id;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            p.setIduser(rs.getInt(1));
            p.setIdProduct(rs.getInt(2));
            p.setQuantity(rs.getInt(3));
            list.add(p);
        }
        return list;
    }
}
