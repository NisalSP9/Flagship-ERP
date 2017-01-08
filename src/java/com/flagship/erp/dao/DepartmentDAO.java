/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public interface DepartmentDAO {

    public boolean addDepartment(String name, Connection connection) throws SQLException, ClassNotFoundException;

    public Map<String, String> getDepartment() throws SQLException, ClassNotFoundException;
}
