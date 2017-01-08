/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.controller;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.model.EmployeeModel;
import com.flagship.erp.service.impl.EmployeeServiceImpl;
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
public class EmployeeContoller extends HttpServlet {

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

//            double salary = Double.parseDouble(request.getParameter("salary"));
//            
//            out.print(salary);
//            
            String name = request.getParameter("name");
            String nic = request.getParameter("nic");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String mobile = request.getParameter("mobile");

            String status = request.getParameter("status");
            String vehical = request.getParameter("vehical");
            String incentive = request.getParameter("incentive");

            String department = request.getParameter("department");
            String grade = request.getParameter("grade");
            String position = request.getParameter("position");

            String epfNo = request.getParameter("epfNo");
            double bSalary = Double.parseDouble(request.getParameter("bSalary"));

            String reim_all = request.getParameter("reim_all");
            String bud_all = request.getParameter("bud_all");
            String ve_all = request.getParameter("ve_all");
            String tra_all = request.getParameter("tra_all");

            double epf = Double.parseDouble(request.getParameter("epf"));
            double etf = Double.parseDouble(request.getParameter("etf"));
            double salary = Double.parseDouble(request.getParameter("salary"));

            EmployeeModel model = new EmployeeModel(0, name, nic, address, email, phone, mobile, status, vehical, incentive, department, grade, position, epfNo, bSalary, reim_all, bud_all, ve_all, tra_all, epf, etf, salary);

            EmployeeServiceImpl employeeServiceImpl = new EmployeeServiceImpl();

            DatabaseResourceFactory factory = new DatabaseResourceFactory();

            Connection connection = factory.getFactoryConnection().getConnection();

            boolean rst = employeeServiceImpl.addNewEmployee(model, connection);

            if (rst) {

                connection.close();
                RequestDispatcher dispatcher = request.getRequestDispatcher("add_employee.jsp");
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
