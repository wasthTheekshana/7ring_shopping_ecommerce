/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DataBase.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wasat
 */
public class changeStatus extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      int goodsId = Integer.parseInt(request.getParameter("prid"));
        String Color = request.getParameter("stone");
        DataBase upSt = new DataBase();
        
        try {
            if (upSt.updateOderStatus(Color,goodsId)) {
                response.getWriter().print("success");
            } else {
                response.getWriter().print("error");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print("error");
        }
    }


}
