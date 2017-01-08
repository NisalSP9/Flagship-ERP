/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.OfficerDAO;
import com.flagship.erp.dao.impl.OfficerDAOImpl;
import com.flagship.erp.service.OfficerService;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class OfficerServiceImpl implements OfficerService {

    public ResultSet getOfficer(Connection connection) throws SQLException, ClassNotFoundException {

        OfficerDAO dAO = new OfficerDAOImpl();

        return dAO.getOfficer(connection);

    }

}
