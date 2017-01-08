/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.impl.DepartmentDAOImpl;
import com.flagship.erp.service.DepartmentService;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public class DepartmentServiceImpl implements DepartmentService {

    public boolean addDepartment(String name, Connection connection) throws SQLException, ClassNotFoundException {

        DepartmentDAOImpl departmentDAOImpl = new DepartmentDAOImpl();

        return departmentDAOImpl.addDepartment(name, connection);
    }

    public Map<String, String> getDepartment() throws SQLException, ClassNotFoundException {
        
        DepartmentDAOImpl departmentDAOImpl = new DepartmentDAOImpl();
        
        return departmentDAOImpl.getDepartment();
    }

}
