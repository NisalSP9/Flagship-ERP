/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service;

import com.flagship.erp.model.EmployeeModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public interface EmployeeService {

    public boolean addNewEmployee(EmployeeModel model,Connection connection) throws SQLException, ClassNotFoundException;

    public ResultSet ViewAllEmployee(Connection connection) throws SQLException, ClassNotFoundException;
}
