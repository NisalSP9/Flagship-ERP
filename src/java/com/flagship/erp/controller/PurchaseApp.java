/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.controller;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.service.POsService;
import com.flagship.erp.service.impl.OPsServiceImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aDMIN
 */
public class PurchaseApp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String id = request.getParameter("id");
            String date = request.getParameter("date");
            String sup = request.getParameter("spn");
            double unitP = Double.parseDouble(request.getParameter("up"));
           

            String[] supInfor = sup.split("`");

            String sup_id = supInfor[0];
            String sup_name = supInfor[1];

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection connection = factory.getFactoryConnection().getConnection();

            POsService service = new OPsServiceImpl();

            boolean rst = service.purchaseApp(connection, id, sup_name, unitP, date,sup_id);

            if (rst) {

                connection.close();
                RequestDispatcher dispatcher = request.getRequestDispatcher("purchaseApp.jsp");
                dispatcher.forward(request, response);

            } else {

                connection.close();
                out.print("Something went wrong...!");

            }
        } catch (ClassNotFoundException ex) {
                   out.print(ex);
                   } catch (SQLException ex) {
                    out.print(ex);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
