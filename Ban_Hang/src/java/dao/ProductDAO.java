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
import java.util.HashSet;
import model.Product;

/**
 *
 * @author diepv
 */
public class ProductDAO {

    //get product tu id
    public Product getProductById(String id) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE id =" + id;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
            product.setId(rs.getInt(1));
            product.setName(rs.getString(2));
            product.setPrice(rs.getFloat(3));
            product.setBrand(rs.getString(4));
            product.setLike(rs.getInt(5));
            product.setImg(rs.getString(6));
        }
        return product;
    }

    //get danh sách sản phẩm dựa vào brand
    public ArrayList<Product> getListProductByBrand(String brand) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE brand= '" + brand + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setId(rs.getInt(1));
            product.setName(rs.getString(2));
            product.setPrice(rs.getFloat(3));
            product.setBrand(rs.getString(4));
            product.setLike(rs.getInt(5));
            product.setImg(rs.getString(6));
            list.add(product);
        }
        return list;
    }

    public ArrayList<Product> getListProduct() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product ";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setId(rs.getInt(1));
            product.setName(rs.getString(2));
            product.setPrice(rs.getFloat(3));
            product.setBrand(rs.getString(4));
            product.setLike(rs.getInt(5));
            product.setImg(rs.getString(6));
            list.add(product);
        }
        return list;
    }

    public ArrayList<String> getListColor(String id) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "select color from productcolor where idproduct=" + id;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<String> list = new ArrayList<>();
        while (rs.next()) {
            String a = rs.getString(1);
            list.add(a);
        }
        return list;
    }
    public ArrayList<Double> getListSize(String id) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "select size from productsize where idsize="+id;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Double> list = new ArrayList<>();
        while(rs.next()){
            Double a = rs.getDouble(1);
            list.add(a);
        }
        return list;
    }
    public HashSet<Integer> getListIdProduct(String sizeType) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql="";
        if(null!=sizeType)switch (sizeType) {
            case "small":
                sql ="select * from productsize where size between 6 and 9";
                break;
            case "medium":
                sql = "select * from productsize where size between 9.5 and 13.5";
                break;
            case "large":
                sql="select * from productsize where size between 14 and 17";
                break;
            default:
                break;
        }
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        HashSet<Integer> list = new HashSet<>();
        while(rs.next()){
            int a = rs.getInt("idsize");
            list.add(a);
        }
        return list;
    }
    
    public HashSet<Integer> getListIdProductColor(String color) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "select * from productcolor where color='"+color+"'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        HashSet<Integer> list = new HashSet<>();
        while(rs.next()){
            int a = rs.getInt("idproduct");
            list.add(a);
        }
        return list;
    }
}
