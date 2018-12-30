/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.sun.javafx.font.freetype.HBGlyphLayout;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import model.Bill;
import model.Item;
import model.Product;
import org.apache.poi.poifs.crypt.HashAlgorithm;

/**
 *
 * @author diepv
 */
public class BillDAO {
    public void insertBill(Bill bill) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql="INSERT INTO bill VALUES(?,?,?,?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bill.getBillID());
        ps.setLong(2, bill.getUserID());
        ps.setDouble(3, bill.getTotal());
        ps.setString(4, bill.getNumberCard());
        ps.setString(5, bill.getAddress());
        ps.setTimestamp(6, bill.getDate());
        ps.setString(7, bill.getFullName());
        ps.setString(8, bill.getCity());
        ps.execute();
    }
    public HashMap<Product,Long> getProductByTopWeek() throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM bill_detail\n" +
        "WHERE createday BETWEEN DATE_SUB(NOW(), INTERVAL 7 DAY) AND NOW()";
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        ProductDAO productDAO = new ProductDAO();
        HashMap<String, Long> cartItems = new HashMap<>();
        HashMap<Product,Long> p = new HashMap<>();
        while(rs.next()){
            String id = Long.toString(rs.getLong("product_id"));
            if(cartItems.containsKey(id)){
                cartItems.put(id, cartItems.get(id)+1);
            }else{
                cartItems.put(id, Long.parseLong("1"));
            }
        }
        if(cartItems.size()>10){
            int i=0;
            for (Map.Entry<String, Long> entry : cartItems.entrySet()) {
                if(i==10) break;
                i++;
                p.put(productDAO.getProductById(entry.getKey()), entry.getValue());
            }
            return p;
        }
        else{
            for (Map.Entry<String, Long> entry : cartItems.entrySet()) {
                p.put(productDAO.getProductById(entry.getKey()), entry.getValue());
            }
        }
        return p;
        
    }
    public HashMap<Product,Long> getProductByTopMonth() throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM bill_detail\n" +
        "WHERE createday BETWEEN DATE_SUB(NOW(), INTERVAL 30 DAY) AND NOW()";
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        ProductDAO productDAO = new ProductDAO();
        HashMap<String, Long> cartItems = new HashMap<>();
        HashMap<Product,Long> p = new HashMap<>();
        while(rs.next()){
            String id = Long.toString(rs.getLong("product_id"));
            if(cartItems.containsKey(id)){
                cartItems.put(id, cartItems.get(id)+1);
            }else{
                cartItems.put(id, Long.parseLong("1"));
            }
        }
        if(cartItems.size()>10){
            int i=0;
            for (Map.Entry<String, Long> entry : cartItems.entrySet()) {
                if(i==10) break;
                i++;
                p.put(productDAO.getProductById(entry.getKey()), entry.getValue());
            }
            return p;
        }
        else{
            for (Map.Entry<String, Long> entry : cartItems.entrySet()) {
                p.put(productDAO.getProductById(entry.getKey()), entry.getValue());
            }
        }
        return p;
        
    }
}
