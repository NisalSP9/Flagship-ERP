/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.controller;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.model.ClientModel;
import com.flagship.erp.model.ProjectModel;
import com.flagship.erp.service.ClientService;
import com.flagship.erp.service.ProjectService;
import com.flagship.erp.service.impl.ClientServiceImpl;
import com.flagship.erp.service.impl.ProjectServiceImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author flagship
 */
public class SearchClientProject extends HttpServlet {

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");

            PrintWriter out = response.getWriter();

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection connection = factory.getFactoryConnection().getConnection();

            ClientService service = new ClientServiceImpl();

            ResultSet resultSet = service.searchClientProject(connection, id);

            JSONObject obj = new JSONObject();

            while (resultSet.next()) {

                obj.put("clientID", resultSet.getString("clientID"));
                obj.put("client_name", resultSet.getString("client_name"));
                obj.put("nic", resultSet.getString("nic"));
                obj.put("address", resultSet.getString("address"));
                obj.put("phone_number", resultSet.getString("phone_number"));
                obj.put("email", resultSet.getString("email"));
                
                obj.put("date", resultSet.getString("start_date"));
                obj.put("status", resultSet.getString("status"));
                obj.put("salesman", resultSet.getString("salesman_name"));
                obj.put("project_price", resultSet.getString("project_price"));
                obj.put("site_address", resultSet.getString("site_address"));
                obj.put("note", resultSet.getString("note"));
                obj.put("remark", resultSet.getString("remaks"));

                obj.put("architect", resultSet.getString("architect_name"));
                obj.put("structural", resultSet.getString("structural"));
                obj.put("MEP", resultSet.getString("MEP"));
                obj.put("council_status", resultSet.getString("council_status"));
                obj.put("site_TO", resultSet.getString("siteTO_name"));
                obj.put("subcontctor", resultSet.getString("sub_contractor_name"));

            }

            out.print(obj);
            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchClientProject.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SearchClientProject.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JSONException ex) {
            Logger.getLogger(SearchClientProject.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out = resp.getWriter();
        try {

            String id = req.getParameter("id");

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection connection = factory.getFactoryConnection().getConnection();

            ProjectService service = new ProjectServiceImpl();

            boolean rst = service.deleteProject(connection, id);

            if (rst) {

                out.print("Deleted...!");
                connection.close();

            } else {
                out.print("Delete fail...!");
                connection.close();
            }

        } catch (ClassNotFoundException ex) {
            out.print(ex);
        } catch (SQLException ex) {
            out.print(ex);
        }

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String c_id = req.getParameter("cid");
            String name = req.getParameter("name");
            String nic = req.getParameter("nic");
            String address = req.getParameter("add");
            String email = req.getParameter("em");
            String phone = req.getParameter("ph");

            ClientModel cm = new ClientModel(c_id, nic, name, address, phone, email);

            String date = req.getParameter("date");
            String s_id = req.getParameter("sid");
            String status = req.getParameter("sta");
            String salesman = req.getParameter("sm");
            String project_price = req.getParameter("pp");
            String site_address = req.getParameter("sa");
            String note = req.getParameter("note");

            String remark = req.getParameter("re");
            String architect = req.getParameter("ar");
            String structural = req.getParameter("stru");
            String MEP = req.getParameter("MEP");
            String council_status = req.getParameter("cs");
            String site_TO = req.getParameter("st");
            String sub = req.getParameter("sub");

            ProjectModel pm = new ProjectModel(s_id, c_id, name, salesman, architect, site_TO, sub, status, site_address, project_price, date, note, remark, structural, MEP, council_status);

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection connection = factory.getFactoryConnection().getConnection();
            
            ClientService service = new ClientServiceImpl();

            service.updateClient(connection, cm);
            
            ProjectService service1 = new ProjectServiceImpl();
            
            service1.updateProject(connection, pm);

            //System.out.println(date);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchClientProject.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SearchClientProject.class.getName()).log(Level.SEVERE, null, ex);
        }

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
