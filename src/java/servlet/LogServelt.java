/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DataBase.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;
import util.PW5;

/**
 *
 * @author wasat
 */
public class LogServelt extends HttpServlet {

    Customer user;
    public LogServelt() {
        user =new Customer();
    }

    
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("customer_email");
        String pwde = request.getParameter("customer_password");
        String autologins = request.getParameter("auto_login");
        DataBase userHandle = new DataBase();
        System.out.println(email);
        System.out.println(pwde);
        try {
            if (userHandle.findByEmail(email) != null) {
                user = userHandle.findByEmail(email);
                String pass = PW5.getPW5(PW5.getPW5(pwde));
                String i = user.getEmail();
                String i1 = user.getPwd();
                String i2 = user.getFname();
                System.out.println("first if" + " " + i + " pwd :L" + i1 + "" + i2);
                if (user.getPwd().equals(pwde)) {
                    System.out.println("2 if");
                    if (autologins != null && autologins.equals("on")) {
                        System.out.println("3 if");
                        Cookie cookiE = new Cookie("LOGIN_EMAIL", email);
                        cookiE.setMaxAge(60 * 60 * 24 * 7);
                        response.addCookie(cookiE);
                    }
                    HttpSession session = request.getSession();
                    session.setAttribute("session", session);
                    session.setAttribute("loginUser", user);
                    session.setAttribute("isLogined", true);
                    session.setAttribute("email", i);
                   request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    request.setAttribute("isLoginOk", "false");
                    request.getRequestDispatcher("userlogin.jsp").forward(request, response);

                }
            } else {
                request.setAttribute("isLoginOk", "false");
                request.getRequestDispatcher("userlogin.jsp").forward(request, response);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
