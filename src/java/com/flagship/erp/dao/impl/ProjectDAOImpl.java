/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.dao.ProjectDAO;
import com.flagship.erp.model.ProjectModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author aDMIN
 */
public class ProjectDAOImpl implements ProjectDAO {

    public boolean addNewProject(ProjectModel model, Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "insert into project value(0,'"+model.getClient_id()+"','" + model.getClient_name() + "','" + model.getSalesman_name() + "','" + model.getArchitect_name() + "','" + model.getSiteTO_name() + "','" + model.getSub_contractor_name() + "','" + model.getStatus() + "','" + model.getSite_address() + "','" + model.getProject_price() + "','" + model.getNote() + "','" + model.getRemaks() + "','" + model.getStructural() + "','" + model.getMEP() + "','" + model.getCouncil_status() + "','"+model.getDate()+"',default)";

        Statement statement = connection.createStatement();

        boolean rst = 0 < statement.executeUpdate(sql);

        return rst;
    }

    public Map<String, ProjectModel> getProject(String s) throws SQLException, ClassNotFoundException {
        String sql = "select project_id,client_name,siteTO_name from project where project_id like '" + s + "%'";

        DatabaseResourceFactory factory = new DatabaseResourceFactory();

        Connection connection = factory.getFactoryConnection().getConnection();

        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery(sql);

        Map<String, ProjectModel> resultMap = new HashMap();

        while (resultSet.next()) {

            ProjectModel model = new ProjectModel(resultSet.getString("project_id"), resultSet.getString("client_name"), resultSet.getString("siteTO_name"));

            resultMap.put(resultSet.getString("project_id"), model);

        }

        connection.close();

        return resultMap;
    }

    public boolean deleteProject(Connection connection, String id) throws SQLException, ClassNotFoundException {

        String sql = "update project set visibility = 'false' where project_id = '"+id+"'";
        
        Statement statement = connection.createStatement();
        
        return 0 < statement.executeUpdate(sql);

    }

    public boolean updateProject(Connection connection, ProjectModel model) throws SQLException, ClassNotFoundException {

        System.out.println("updateProject" + model.getDate());
        
        String sql = "update project set salesman_name = '"+model.getSalesman_name()+"',architect_name = '"+model.getArchitect_name()+"',siteTO_name='"+model.getSiteTO_name()+"',sub_contractor_name='"+model.getSub_contractor_name()+"',status='"+model.getStatus()+"',site_address='"+model.getSite_address()+"',project_price='"+model.getProject_price()+"',note='"+model.getNote()+"',remaks='"+model.getRemaks()+"',structural='"+model.getStructural()+"',MEP='"+model.getMEP()+"',council_status='"+model.getCouncil_status()+"',start_date = '"+model.getDate()+"' where project_id = '"+model.getProject_id()+"'";

        Statement statement = connection.createStatement();
        
        return 0 < statement.executeUpdate(sql);

    }

}
