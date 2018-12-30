/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import dao.ProductUserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.Product;
import model.ProductUser;
import model.Users;

/**
 *
 * @author diepv
 */
public class CartServlet extends HttpServlet {

    private final ProductDAO productDAO = new ProductDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String productID = request.getParameter("productID");
        Cart cart = (Cart) session.getAttribute("cart");
        ProductUserDAO productUserDAO = new ProductUserDAO();
        Users users = (Users)session.getAttribute("user");
        try {
            Long idProduct = Long.parseLong(productID);
            Product product = productDAO.getProductById(productID);
            
            switch(command){
                case "plus":
                        if(cart.getCartItems().containsKey(idProduct)){
                            cart.plusToCart(idProduct, new Item(product,cart.getCartItems().get(idProduct).getQuantity()));
                        }
                        else{
                            cart.plusToCart(idProduct, new Item(product,1));
                        }
                    
                    session.setAttribute("cart", cart);
                    response.sendRedirect("/Ban_Hang/index.jsp");
                    break;
                case "remove":
                    cart.removeToCart(idProduct);
                    session.setAttribute("cart", cart);
                    response.sendRedirect("/Ban_Hang/cart.jsp");
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/Ban_Hang/index.jsp");
        }
    }


}
