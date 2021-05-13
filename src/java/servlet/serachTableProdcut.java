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
public class serachTableProdcut extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
        try {
            String name = request.getParameter("mainCate");
            DataBase upSt = new DataBase();
            List<Products> pr = upSt.adminTablcateSearch(name);
                 JsonArray jr = new JsonArray();
            JsonObject jo = new JsonObject();
            for (int i = 0; i < pr.size(); i++) {
                Products get = pr.get(i);
                  jo = new JsonObject();
                    jo.addProperty("id", get.getProduct_id());
                    jo.addProperty("title", get.getTitle());
                    jo.addProperty("description", get.getDescription());
                    jo.addProperty("price", get.getPrice());
                    jo.addProperty("discount", get.getDiscount());
                    jo.addProperty("quantity", get.getQuantity());
                    jo.addProperty("mainCate", get.getMainCate());
                    jo.addProperty("subCate", get.getSubCate());
                    jo.addProperty("feature", get.getFeature());
                    jo.addProperty("default_image", get.getDefault_image());
                    jo.addProperty("sub_image1", get.getSub_image1());
                    jo.addProperty("sub_image2", get.getSub_image2());
                    jo.addProperty("sub_image3", get.getSub_image3());
                    jo.addProperty("stockPrice", get.getStockPrice());
                    jo.addProperty("material_color", get.getMaterial_color());
                    jo.addProperty("stone", get.getStone());
                  jr.add(jo);
            }
             String jsonarray = jr.toString();
            System.out.println("respomne json arry" + jsonarray);
             out.print(jr.toString());
        } catch (Exception ex) {
            Logger.getLogger(serachTableProdcut.class.getName()).log(Level.SEVERE, null, ex);
        }
    }



}
