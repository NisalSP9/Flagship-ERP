/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.connection.factory;

import com.flagship.erp.connection.dbconnection.DBResourceConnection;
import com.flagship.erp.connection.dbconnection.impl.MysqlDatabaseResourceConnectionImpl;

/**
 *
 * @author aDMIN
 */
public class DatabaseResourceFactory {
    
    public DBResourceConnection getFactoryConnection(){
    
        return new MysqlDatabaseResourceConnectionImpl();
    
    }
    
}
