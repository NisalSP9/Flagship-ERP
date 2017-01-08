/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.ItemDAO;
import com.flagship.erp.dao.PhaseDAO;
import com.flagship.erp.dao.impl.ItemDAOImpl;
import com.flagship.erp.dao.impl.PhaseDAOImpl;
import com.flagship.erp.service.PhaseService;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class PhaseServiceImpl implements PhaseService{

    public ResultSet getPhase(Connection connection) throws SQLException, ClassNotFoundException {

        PhaseDAO dAO = new PhaseDAOImpl();
        
        return dAO.getPhase(connection);

    }
    
}
