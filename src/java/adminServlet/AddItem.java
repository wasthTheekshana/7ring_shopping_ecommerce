/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlet;

import DataBase.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import model.Products;

/**
 *
 * @author wasat
 */

public class AddItem extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String itemTitle = request.getParameter("title");
        String descr = request.getParameter("des");
        String price = request.getParameter("price");
        String discount = request.getParameter("dis");
        String qtys = request.getParameter("qty");
        String main = request.getParameter("mainCate");
        String sub = request.getParameter("subCate");
        String fea = request.getParameter("featured");
        String color = request.getParameter("color");
        String stone = request.getParameter("stone");
        String imag1 = request.getParameter("file");
        String imag2 = request.getParameter("subImg1");
        String imag3 = request.getParameter("subImg2");
        String imag4 = request.getParameter("subImg3");
        
        int conPrice = Integer.parseInt(price); 
        int conDiscount = Integer.parseInt(discount); 
        int conQty = Integer.parseInt(qtys); 
        
        Products p = new Products();
        p.setTitle(itemTitle);
        p.setDescription(descr);
        p.setPrice(conPrice);
        p.setDiscount(conDiscount);
        p.setQuantity(conQty);
        p.setMainCate(main);
        p.setSubCate(sub);
        p.setFeature(fea);
        p.setMaterial_color(color);
        p.setStone(stone);
        p.setDefault_image(imag1);
        p.setSub_image1(imag2);
        p.setSub_image2(imag3);
        p.setSub_image3(imag4);
        
        DataBase addProd = new DataBase();
        try {
            addProd.addProduct(p);
        } catch (SQLException ex) {
           // Logger.getLogger(AddItem.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        //JOptionPane.showMessageDialog(null, "Product added Successfully", "Info", JOptionPane.INFORMATION_MESSAGE);
    }


}
