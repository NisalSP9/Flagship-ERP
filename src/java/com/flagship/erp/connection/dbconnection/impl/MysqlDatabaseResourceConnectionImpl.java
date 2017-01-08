/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.connection.dbconnection.impl;

import com.flagship.erp.connection.dbconnection.DBResourceConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class MysqlDatabaseResourceConnectionImpl implements DBResourceConnection {

    public Connection getConnection() throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.jdbc.Driver");

        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/flagship_erp", "root", "ep1137");
    
        return connection;
    }

}
