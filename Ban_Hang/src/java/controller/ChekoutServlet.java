/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BillDAO;
import dao.BillDetailDAO;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bill;
import model.BillDetail;
import model.Cart;
import model.Item;
import model.Payment;
import model.Users;

/**
 *
 * @author diepv
 */
public class ChekoutServlet extends HttpServlet {
    private final BillDAO billDAO = new BillDAO();
    private final BillDetailDAO billDetailDAO = new BillDetailDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String address = request.getParameter("address");
        String fullName = request.getParameter("fullName");
        String city = request.getParameter("city");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Users users = (Users) session.getAttribute("user");
        String nameCard = request.getParameter("nameCard");
        String numberCard = request.getParameter("numberCard");
        String expMonth = request.getParameter("expMonth");
        String ExpYear = request.getParameter("ExpYear");
        String CVV = request.getParameter("CVV");
        Bill bill = new Bill();
        Payment p = new Payment();
        try {
            long ID = new Date().getTime();
            //lấy thông tin thẻ thanh toán
            
            p.setCVV(CVV);
            p.setExpMonth(expMonth);
            p.setExpYear(ExpYear);
            p.setNameCard(nameCard);
            p.setNumberCard(numberCard);
            
            bill.setBillID(ID);
            bill.setUserID(users.getUserID());
            bill.setTotal(cart.totalCart());
            bill.setNumberCard(numberCard);
            bill.setAddress(address);
            bill.setDate(new Timestamp(new Date().getTime()));
            bill.setFullName(fullName);
            bill.setCity(city);
            billDAO.insertBill(bill);
           
            for(Map.Entry<Long, Item> list: cart.getCartItems().entrySet()){
                BillDetail billDetail = new BillDetail(ID, ID, list.getValue().getProduct().getId(), list.getValue().getProduct().getPrice(), list.getValue().getQuantity());
                billDetailDAO.insertBillDetail(billDetail);
                
            }
        } catch (Exception e) {
        }
        //ma bill, user_id, full_name,address,city, 
        request.setAttribute("bill", bill);
        request.setAttribute("payment", p);
        RequestDispatcher rd = request.getRequestDispatcher("bill.jsp"); 
        rd.forward(request, response); 
    }


}
