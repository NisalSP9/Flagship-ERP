/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.impl.DepartmentDAOImpl;
import com.flagship.erp.dao.impl.GradeDAOImpl;
import com.flagship.erp.service.GradeService;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public class GradeServiceImpl implements GradeService {

    public boolean addGrade(String name, Connection connection) throws SQLException, ClassNotFoundException {

        GradeDAOImpl gradeDAOImpl = new GradeDAOImpl();

        return gradeDAOImpl.addGrade(name, connection);
    }

    public Map<String, String> getGrade() throws SQLException, ClassNotFoundException {
        
        GradeDAOImpl gradeDAOImpl = new GradeDAOImpl();
        
        return gradeDAOImpl.getGrede();
    }

}
