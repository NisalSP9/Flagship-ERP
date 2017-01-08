/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.impl.DepartmentDAOImpl;
import com.flagship.erp.dao.impl.GradeDAOImpl;
import com.flagship.erp.dao.impl.PositionDAOImpl;
import com.flagship.erp.service.GradeService;
import com.flagship.erp.service.PositionService;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public class PositionServiceImpl implements PositionService {

    public boolean addPosition(String name, Connection connection) throws SQLException, ClassNotFoundException {

        PositionDAOImpl positionDAOImpl = new PositionDAOImpl();

        return positionDAOImpl.addPosition(name, connection);
    }

    public Map<String, String> getPosition() throws SQLException, ClassNotFoundException {
        
        PositionDAOImpl positionDAOImpl = new PositionDAOImpl();
        
        return positionDAOImpl.getPosition();
    }

}
