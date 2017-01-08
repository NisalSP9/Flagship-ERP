/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public interface GradeService {
    
    public boolean addGrade(String name,Connection connection)throws SQLException,ClassNotFoundException;
    
    public Map<String,String> getGrade()throws SQLException,ClassNotFoundException;
    
}
