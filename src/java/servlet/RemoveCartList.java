/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DataBase.DataBase;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wasat
 */
public class RemoveCartList extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           Integer goodid = Integer.parseInt(request.getParameter("goodsId"));
           System.out.println(goodid);
       DataBase shopCartHandle = new DataBase();
        try {
            if (shopCartHandle.removeCartList(goodid)) {
                response.getWriter().print("success");
            }else{
            
            response.getWriter().print("false");
            
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
