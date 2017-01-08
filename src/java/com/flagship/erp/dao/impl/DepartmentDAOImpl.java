/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.dao.DepartmentDAO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public class DepartmentDAOImpl implements DepartmentDAO {

    public boolean addDepartment(String name, Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "insert into department value (0,'" + name + "')";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);
    }

    public Map<String, String> getDepartment() throws SQLException, ClassNotFoundException {

        String sql = "select * from department";

        DatabaseResourceFactory factory = new DatabaseResourceFactory();

        Connection connection = factory.getFactoryConnection().getConnection();

        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery(sql);

        Map<String, String> resultMap = new HashMap();

        while (resultSet.next()) {

            resultMap.put(resultSet.getString("department_id"), resultSet.getString("name"));

        }

        connection.close();
        
        return resultMap;

    }

}
