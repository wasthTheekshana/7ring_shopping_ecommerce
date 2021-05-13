/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DataBase.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Customer;
import util.PW5;
import util.RegiSendEmail;

/**
 *
 * @author wasat
 */
public class RegisterCusServelt extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname = request.getParameter("customer_first_name");
        String lname = request.getParameter("customer_last_name");
        String email = request.getParameter("customer_email");
        String pwd = request.getParameter("customer_password");
        String hash = RegiSendEmail.prepareRandomString(30);
        Customer user = new Customer();
        boolean isRegister = false;
        String isPwdSame = "";
        String isPwd = "";
        String isEmail = "";
        DataBase userHandle = new DataBase();
        try {
            if (email.matches("^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$")) {
                if (pwd.matches("[A-Za-z0-9_]{6,}")) {

                    pwd = PW5.getPW5(PW5.getPW5(pwd));
                    user.setFname(fname);
                    user.setLname(lname);
                    user.setEmail(email);
                    user.setPwd(pwd);
                    if (userHandle.doCreate(user)) {
                        isRegister = true;
                        try {
                            RegiSendEmail.sendEmailRegistrationLink(email, hash, fname);

                        } catch (MessagingException e) {
                            e.printStackTrace();
                            System.out.print(e.getMessage());
                        }
                    }
                    request.setAttribute("isRegister", isRegister);
                    if (isRegister) {
                        request.getRequestDispatcher("userlogin.jsp")
                                .forward(request, response);
                    } else {
                        request.getRequestDispatcher("userregister.jsp")
                                .forward(request, response);
                    }

                } else {
                    isPwd = "Password format is wrong";
                }
            } else {
                isEmail = "E-mail format is wrong or already exists";
            }
            if (isRegister == true) {
                request.setAttribute("isRegister", isRegister);
                request.getRequestDispatcher("userlogin.jsp").forward(
                        request, response);
            } else {
                request.setAttribute("isRegister", false);
                request.setAttribute("isPwdSame", isPwdSame);
                request.setAttribute("isPwd", isPwd);
                request.setAttribute("isEmail", isEmail);
                request.getRequestDispatcher("userregister.jsp").forward(
                        request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
