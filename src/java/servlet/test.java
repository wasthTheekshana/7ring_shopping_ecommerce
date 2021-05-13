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
import model.Products;

/**
 *
 * @author wasat
 */
public class test extends HttpServlet {

    DataBase db;

    public test() {
        db = new DataBase();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        try {
            String Color = request.getParameter("material");
            String Stone = request.getParameter("stone");
            List<Products> pr = db.advanceSearch(Color, Stone);

            JsonArray jr = new JsonArray();
            JsonObject jo = new JsonObject();

            for (int i = 0; i < pr.size(); i++) {
                Products get = pr.get(i);
                jo = new JsonObject();
                jo.addProperty("Product_id", get.getProduct_id());
                jo.addProperty("Title", get.getTitle());
                jo.addProperty("Description", get.getDescription());
                jo.addProperty("Price", get.getPrice());
                jo.addProperty("Default_image", get.getDefault_image());
                jr.add(jo);
            }

            String jsonarray = jr.toString();
            System.out.println("respomne json arry" + jsonarray);

            out.print(jr.toString());

        } catch (Exception ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
