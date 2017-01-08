/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.dao.DepartmentDAO;
import com.flagship.erp.dao.GradeDAO;
import com.flagship.erp.dao.PositionDAO;
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
public class PositionDAOImpl implements PositionDAO {

    public boolean addPosition(String name, Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "insert into position value (0,'" + name + "')";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);
    }

    public Map<String, String> getPosition() throws SQLException, ClassNotFoundException {

        String sql = "select * from position";

        DatabaseResourceFactory factory = new DatabaseResourceFactory();

        Connection connection = factory.getFactoryConnection().getConnection();

        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery(sql);

        Map<String, String> resultMap = new HashMap();

        while (resultSet.next()) {

            resultMap.put(resultSet.getString("id"), resultSet.getString("name"));

        }

        connection.close();

        return resultMap;

    }

}
