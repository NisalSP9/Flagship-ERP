/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.dao.ClientDAO;
import com.flagship.erp.model.ClientModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author aDMIN
 */
public class ClientDAOImpl implements ClientDAO {

    public boolean addNewClient(ClientModel client, Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "insert into client value ('" + client.getId() + "','" + client.getNic() + "','" + client.getClient_name() + "','" + client.getAddress() + "','" + client.getPhone_number() + "','" + client.getEmail() + "',default)";

        Statement statement = connection.createStatement();

        boolean rst = 0 < statement.executeUpdate(sql);

        return rst;
    }

    public ResultSet viewAllClient(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "Select * from client,project where client.id = project.clientID and project.visibility = 'true'";

        Statement statement = connection.createStatement();

        return statement.executeQuery(sql);

    }

    public int getID(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "Select id from flagship_erp.client order by id desc limit 1;";

        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery(sql);

        int i = 0;

        while (resultSet.next()) {

            i = resultSet.getInt("id");

        }

        return i;

    }

    public ResultSet searchClientProject(Connection connection, String id) throws SQLException, ClassNotFoundException {

        String sql = "Select * from client,project where id=clientID and project.visibility = 'true' and project_id='" + id + "'";

        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery(sql);

        return resultSet;
    }

    public boolean updateClient(Connection connection, ClientModel model) throws SQLException, ClassNotFoundException {

        String sql = "update client set nic='" + model.getNic() + "',client_name='" + model.getClient_name() + "',address='" + model.getAddress() + "',phone_number='" + model.getPhone_number() + "',email='" + model.getEmail() + "' where id = '" + model.getId() + "'";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);

    }
}
