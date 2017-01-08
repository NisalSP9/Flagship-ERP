/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.ClientDAO;
import com.flagship.erp.dao.impl.ClientDAOImpl;
import com.flagship.erp.model.ClientModel;
import com.flagship.erp.service.ClientService;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class ClientServiceImpl implements ClientService {

    public boolean addClient(ClientModel clientModel, Connection connection) throws ClassNotFoundException, SQLException {

        ClientDAOImpl clientDAOImpl = new ClientDAOImpl();

        boolean rst = clientDAOImpl.addNewClient(clientModel, connection);

        return rst;

    }

    public ResultSet viewAllClient(Connection connection) throws SQLException, ClassNotFoundException {

        ClientDAOImpl clientDAOImpl = new ClientDAOImpl();

        ResultSet rst = clientDAOImpl.viewAllClient(connection);

        return rst;

    }

    public int getID(Connection connection) throws SQLException, ClassNotFoundException {

        ClientDAO dAO = new ClientDAOImpl();

        int i = dAO.getID(connection);
        
        return i;

    }

    public ResultSet searchClientProject(Connection connection, String id) throws SQLException, ClassNotFoundException {

        ClientDAO dAO = new ClientDAOImpl();
        
        return dAO.searchClientProject(connection, id);


    }

    public boolean updateClient(Connection connection, ClientModel model) throws SQLException, ClassNotFoundException {

        ClientDAO dAO = new ClientDAOImpl();
        
        return dAO.updateClient(connection, model);
        
    }

}
