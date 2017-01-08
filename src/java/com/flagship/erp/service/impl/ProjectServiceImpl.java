/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.ProjectDAO;
import com.flagship.erp.dao.impl.ProjectDAOImpl;
import com.flagship.erp.model.ProjectModel;
import com.flagship.erp.service.ProjectService;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public class ProjectServiceImpl implements ProjectService {

    public boolean addNewProject(ProjectModel model, Connection connection) throws SQLException, ClassNotFoundException {

        ProjectDAOImpl projectDAOImpl = new ProjectDAOImpl();

        boolean rst = projectDAOImpl.addNewProject(model, connection);

        return rst;

    }

    public Map<String, ProjectModel> getProject(String s) throws SQLException, ClassNotFoundException {

        ProjectDAOImpl projectDAOImpl = new ProjectDAOImpl();

        return projectDAOImpl.getProject(s);

    }

    public boolean deleteProject(Connection connection, String id) throws SQLException, ClassNotFoundException {

        ProjectDAO dAO = new ProjectDAOImpl();

        return dAO.deleteProject(connection, id);

    }

    public boolean updateProject(Connection connection, ProjectModel model) throws SQLException, ClassNotFoundException {

        ProjectDAO dAO = new ProjectDAOImpl();

        return dAO.updateProject(connection, model);
        

    }

}
