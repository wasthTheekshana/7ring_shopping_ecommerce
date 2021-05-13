/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DataBase.DataBase;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Orders;

/**
 *
 * @author wasat
 */
public class oderetail extends HttpServlet {

     DataBase db;

    public oderetail() {
        db = new DataBase();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
        try {
            String id = request.getParameter("id");
            int passid = Integer.parseInt(id);
            
            List<Orders> pr = db.findByOderDetails(passid);
             
            JsonArray jr = new JsonArray();
            JsonObject jo = new JsonObject();
            
            for (int i = 0; i < pr.size(); i++) {
                Orders get = pr.get(i);
                  jo = new JsonObject();
                  jo.addProperty("id", get.getId());
                  jo.addProperty("order_num", get.getOrder_num());
                  jo.addProperty("first_name", get.getFirst_name());
                  jo.addProperty("last_name", get.getLast_name());
                  jo.addProperty("product_name", get.getProduct_name());
                  jo.addProperty("price", get.getPrice());
                  jo.addProperty("QTY", get.getQTY());
                  jo.addProperty("address1", get.getAddress1());
                  jo.addProperty("address2", get.getAddress2());
                  jo.addProperty("email", get.getEmail());
                  jo.addProperty("status", get.getStatus());
                   jr.add(jo);
            }
              String jsonarray = jr.toString();
            System.out.println("respomne json arry" + jsonarray);
             out.print(jr.toString());
        } catch (Exception e) {
             Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, e);
        }
    }

}
