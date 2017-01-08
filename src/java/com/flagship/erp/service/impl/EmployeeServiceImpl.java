/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.EmployeeDAO;
import com.flagship.erp.dao.impl.EmployeeDAOImpl;
import com.flagship.erp.model.EmployeeModel;
import com.flagship.erp.service.EmployeeService;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class EmployeeServiceImpl implements EmployeeService {

    public boolean addNewEmployee(EmployeeModel model, Connection connection) throws SQLException, ClassNotFoundException {

        EmployeeDAOImpl employeeDAOImpl = new EmployeeDAOImpl();

        boolean rst = employeeDAOImpl.addNewEmployee(model, connection);

        return rst;

    }

    public ResultSet ViewAllEmployee(Connection connection) throws SQLException, ClassNotFoundException {

        EmployeeDAO dAO = new EmployeeDAOImpl();

        return dAO.ViewAllEmployee(connection);

    }

}
