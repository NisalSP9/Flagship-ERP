/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.dao.OfficerDAO;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class OfficerDAOImpl implements OfficerDAO {

    public ResultSet getOfficer(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select name from officer";

        Statement statement = connection.createStatement();

        return statement.executeQuery(sql);

    }

}
