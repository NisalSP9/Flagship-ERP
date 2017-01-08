/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service;

import com.flagship.erp.model.ProjectModel;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public interface ProjectService {
    
    public boolean addNewProject(ProjectModel model,Connection connection )throws SQLException,ClassNotFoundException;
    public Map<String, ProjectModel>  getProject(String s) throws SQLException, ClassNotFoundException;
    public boolean deleteProject(Connection connection, String id) throws SQLException, ClassNotFoundException;
    public boolean updateProject(Connection connection, ProjectModel model) throws SQLException, ClassNotFoundException; 
}
