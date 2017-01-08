/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.controller;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.model.ClientModel;
import com.flagship.erp.model.ProjectModel;
import com.flagship.erp.service.impl.ClientServiceImpl;
import com.flagship.erp.service.impl.ProjectServiceImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aDMIN
 */
public class ClientProjectContoller extends HttpServlet {

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
            String name = request.getParameter("name");
            String nic = request.getParameter("nic");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");

            String date = request.getParameter("date");

            String status = request.getParameter("status");
            String salesman = request.getParameter("salesman");
            String project_price = request.getParameter("project_price");
            String site_address = request.getParameter("site_address");
            String notes = request.getParameter("notes");
            String remark = request.getParameter("remark");
            String architect = request.getParameter("architect");
            String structural = request.getParameter("structural");
            String MEP = request.getParameter("MEP");
            String council_status = request.getParameter("council_status");
            String site_TO = request.getParameter("site_TO");
            String subcontctor = request.getParameter("subcontctor");

            DatabaseResourceFactory databaseResourceFactory = new DatabaseResourceFactory();

            Connection connection = databaseResourceFactory.getFactoryConnection().getConnection();

            connection.setAutoCommit(false);

            ClientModel clientModel = new ClientModel(id, nic, name, address, phone, email);

            ProjectModel projectModel = new ProjectModel("0", id, name, salesman, architect, site_TO, subcontctor, status, site_address, project_price, date, notes, remark, structural, MEP, council_status);

            ClientServiceImpl clientServiceImpl = new ClientServiceImpl();

            ProjectServiceImpl projectServiceImpl = new ProjectServiceImpl();

            boolean rst1 = clientServiceImpl.addClient(clientModel, connection);
            boolean rst2 = projectServiceImpl.addNewProject(projectModel, connection);

            out.print(" " + rst1 + rst2 + " ");

            if (rst2) {

                connection.commit();
                connection.close();
                RequestDispatcher dispatcher = request.getRequestDispatcher("add_client.jsp");
                dispatcher.forward(request, response);

            } else {

                out.print("Something went wrong...!");
                connection.rollback();
                connection.close();

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
