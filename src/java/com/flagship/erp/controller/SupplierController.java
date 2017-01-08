/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.controller;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.model.Supplier;
import com.flagship.erp.service.SupplierService;
import com.flagship.erp.service.impl.SupplierServiceImpl;
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
public class SupplierController extends HttpServlet {

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

            String name = request.getParameter("name");
            String NIC = request.getParameter("nic");
            String contact_number = request.getParameter("phone");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String bank = request.getParameter("bank");
            String account = request.getParameter("AccNo");
            String company_name = request.getParameter("company");
            String PV_no = request.getParameter("pv");

            Supplier s = new Supplier("0", name, NIC, contact_number, address, email, bank, account, company_name, PV_no);

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection c = factory.getFactoryConnection().getConnection();

            SupplierService ss = new SupplierServiceImpl();

            boolean rst = ss.addNewSupplier(c, s);

            if (rst) {

                c.close();

                RequestDispatcher rd = request.getRequestDispatcher("add_supplier.jsp");

                rd.forward(request, response);

            } else {

                c.close();
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
