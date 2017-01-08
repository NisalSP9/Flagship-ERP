/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.connection.dbconnection;

import com.flagship.erp.connection.ResourceConnection;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public interface DBResourceConnection extends ResourceConnection{
    
    public Connection getConnection()throws ClassNotFoundException, SQLException;
    
}
