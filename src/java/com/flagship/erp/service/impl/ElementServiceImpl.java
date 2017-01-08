/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.ElementDAO;
import com.flagship.erp.dao.impl.ElementDAOImpl;
import com.flagship.erp.service.ElementService;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class ElementServiceImpl implements ElementService{

    public ResultSet getElement(Connection connection) throws SQLException, ClassNotFoundException {

        ElementDAO dAO = new ElementDAOImpl();
        
        return dAO.getElement(connection);

    }
    
}
