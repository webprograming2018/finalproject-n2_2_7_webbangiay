/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;
import tools.SendMail;

/**
 *
 * @author diepv
 */
public class SendEmail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users users = (Users)session.getAttribute("user");
        String total = request.getParameter("total");
        SendMail send = new SendMail();
        send.sendMail(users.getUserEmail(), "Hóa đơn thanh toán", "Tổng số tiến quý khách cấn thanh toán là $"+total);
        response.sendRedirect("/Ban_Hang/index.jsp");
    }

}
