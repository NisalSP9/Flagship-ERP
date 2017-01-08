/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.dao.ItemDAO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author aDMIN
 */
public class ItemDAOImpl implements ItemDAO {

    public ResultSet getItem(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select item_name from item";
        
        Statement statement = connection.createStatement();
        
        return statement.executeQuery(sql);
        

    }

}
