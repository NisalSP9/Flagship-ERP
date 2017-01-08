/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.dao.SupplierDAO;
import com.flagship.erp.model.Supplier;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author aDMIN
 */
public class SupplierDAOImpl implements SupplierDAO {

    public boolean addNewSupplier(Connection connection, Supplier supplier) throws SQLException, ClassNotFoundException {

        String sql = "insert into supplier value(0,"
                + "'" + supplier.getName() + "',"
                + "'" + supplier.getNIC() + "',"
                + "'" + supplier.getContact_number() + "',"
                + "'" + supplier.getAddress() + "',"
                + "'" + supplier.getEmail() + "',"
                + "'" + supplier.getBank() + "',"
                + "'" + supplier.getAccount() + "',"
                + "'" + supplier.getCompany_name() + "',"
                + "'" + supplier.getPV_no() + "',"
                + "'true')";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);

    }

    public ResultSet getSupplier(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "Select name,id from supplier where visibility = 'true'";

        Statement s = connection.createStatement();

        return s.executeQuery(sql);

    }

}
