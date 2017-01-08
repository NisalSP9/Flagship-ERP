/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.controller;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.model.OPSModel;
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
public class TO_POs_Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {


        } finally {
            out.close();

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param req
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String posID = req.getParameter("posID");

            String date = req.getParameter("date");

            String siteID = req.getParameter("siteId");

            String Client = req.getParameter("client");

            String to = req.getParameter("to");

            String officer = req.getParameter("officer");

            String phase = req.getParameter("phase");

            String element = req.getParameter("element");

            String item = req.getParameter("item");

            String dis = req.getParameter("dis");

            double qty = Double.parseDouble(req.getParameter("qty"));

            String unit = req.getParameter("unit");

            OPSModel model = new OPSModel(posID, siteID, Client, to, officer, phase, element, item, dis, qty, unit, false, false, false, date);

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection connection = factory.getFactoryConnection().getConnection();

            POsService service = new OPsServiceImpl();

            boolean rst = service.updatePOS(connection, model);

            if (rst) {

                connection.close();

                RequestDispatcher dispatcher = req.getRequestDispatcher("update_pos.jsp");

                dispatcher.forward(req, response);

            } else {

                connection.close();
                PrintWriter out = response.getWriter();
                out.print("something went wrong");

            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TO_POs_Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TO_POs_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }

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
        PrintWriter out = response.getWriter();
        try {

            String site_id = request.getParameter("siteID");

            String client = request.getParameter("client");
            String TO_name = request.getParameter("TO_name");

            String officer = request.getParameter("officer");
            String phase = request.getParameter("phase");
            String element = request.getParameter("element");

            String item = request.getParameter("item");
            String dis = request.getParameter("dis");
            double qty = Double.parseDouble(request.getParameter("qty"));
            String unit = request.getParameter("unit");
            String date = request.getParameter("date");

            OPSModel model = new OPSModel("0", site_id, client, TO_name, officer, phase, element, item, dis, qty, unit, false, false, false, date);

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection connection = factory.getFactoryConnection().getConnection();

            OPsServiceImpl impl = new OPsServiceImpl();

            boolean rst = impl.addOPs(model, connection);

            if (rst) {

                RequestDispatcher dispatcher = request.getRequestDispatcher("po.jsp");
                dispatcher.forward(request, response);

            } else {

                out.print("Something went wrong...!");

            }
        } catch (ClassNotFoundException ex) {

            out.print(ex);

        } catch (SQLException ex) {
            out.print(ex);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        PrintWriter out = resp.getWriter();
        
        out.print(req.getParameter("name"));
        
        
        
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
