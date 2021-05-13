/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DataBase.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wasat
 */
public class fetch_data extends HttpServlet {

    DataBase db;
    private String qr;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        String Color = request.getParameter("material");
        String Stone = request.getParameter("stone");
        //  String materialColor[] = request.getParameterValues("materialColor");
        System.out.println("awa");
        System.out.println("HTTP method:" + request.getMethod());
        System.out.println("awa 2" + Color);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/7ringshop", "root", "123");
            qr = "SELECT * FROM products WHERE STATUS= 1 AND material_color = '" + Color + "' OR stone = '" + Stone + "' ";

            PreparedStatement ps = con.prepareStatement(qr);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                out.println("<div  class='col-lg-4 col-md-6 col-sm-6'>");
                out.println("<div class='product__item'>");
                out.println("<div class='product__item__pic set-bg' data-setbg='./images/"+rs.getString("default_image")+"'>");
                out.println("<ul class='product__item__pic__hover'>");
                out.println("<li><a href='#'><i class='fa fa-heart'></i></a></li>");
                out.println("<li><a href='SinglItem?id=" + rs.getString(1) + "'><i class='fas fa-eye'></i></a></li>");
                out.println("<li><a href='#'><i class='fa fa-shopping-cart'></i></a></li>");
                out.println("</ul>");
                out.println("</div>");
                out.println("<div class='product__item__text'>");
                out.println("<h6><a href='#'>" + rs.getString(2) + "</a></h6>");
                out.println("<h6><a href='#'>" + rs.getString(3) + "</a></h6>");
                out.println("<h5>Rs " + rs.getString(4) + "</h5>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(fetch_data.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(fetch_data.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
