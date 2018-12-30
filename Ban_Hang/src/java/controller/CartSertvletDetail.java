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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.Product;
import model.Users;

/**
 *
 * @author diepv
 */
public class CartSertvletDetail extends HttpServlet {

    private final ProductDAO productDAO = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productID = (String) request.getParameter("productID");
        int i = Integer.parseInt(request.getParameter("quantity"));
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        ProductUserDAO productUserDAO = new ProductUserDAO();
        Users users = (Users)session.getAttribute("user");
        try {
            Long idProduct = Long.parseLong(productID);
            Product product = productDAO.getProductById(productID);
            if(cart.getCartItems().containsKey(idProduct)){
                cart.plusToCart(idProduct, new Item(product,cart.getCartItems().get(idProduct).getQuantity()+i-1));
            }
            else{
                cart.plusToCart(idProduct, new Item(product,i));
            }
            session.setAttribute("cart", cart);
            response.sendRedirect("/Ban_Hang/index.jsp");
        } catch (Exception e) {
        }
    }

}
