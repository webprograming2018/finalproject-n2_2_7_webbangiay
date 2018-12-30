/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;
import tools.MD5;

/**
 *
 * @author diepv
 */
public class UserServlet extends HttpServlet {

    UsersDAO usersDAO = new UsersDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url="";
        HttpSession session = request.getSession();
        Users users = new Users();
        switch(command){
            case "insert":
                users.setUserID(new java.util.Date().getTime());
                users.setUserEmail(request.getParameter("email"));
                users.setUserPass(MD5.encryption(request.getParameter("pass")));
                users.setUserRole(false);
                usersDAO.insertUser(users);
                session.setAttribute("user", users);
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);;
                break;
            case "login":
                users = usersDAO.login(request.getParameter("email"),MD5.encryption(request.getParameter("pass")));
                if(users!=null){
                    session.setAttribute("user", users);
                    RequestDispatcher rd1 = request.getRequestDispatcher("/index.jsp");
                    rd1.forward(request, response);
                }
                else {
                    
                    request.setAttribute("error", "Error user or password!");
                    RequestDispatcher rd2=request.getRequestDispatcher("/login.jsp");  
                    rd2.include(request, response);  
                }
                break;
                
            case "logout":
                session.invalidate();
                RequestDispatcher rd2=request.getRequestDispatcher("/index.jsp");  
                rd2.include(request, response);  
        }
       
    }

}
