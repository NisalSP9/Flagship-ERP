/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service;

import com.flagship.erp.model.ClientModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public interface ClientService {

    public boolean addClient(ClientModel clientModel,Connection connection) throws ClassNotFoundException, SQLException;

    public ResultSet viewAllClient(Connection connection) throws SQLException, ClassNotFoundException;
    
    public int getID(Connection connection) throws SQLException, ClassNotFoundException;
    
    public ResultSet searchClientProject(Connection connection,String id) throws SQLException,ClassNotFoundException;
    
    public boolean updateClient(Connection connection, ClientModel model) throws SQLException, ClassNotFoundException;
}
