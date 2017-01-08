/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.SupplierDAO;
import com.flagship.erp.dao.impl.SupplierDAOImpl;
import com.flagship.erp.model.Supplier;
import com.flagship.erp.service.SupplierService;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public class SupplierServiceImpl implements SupplierService {

    public boolean addNewSupplier(Connection connection, Supplier supplier) throws SQLException, ClassNotFoundException {

        SupplierDAO dAO = new SupplierDAOImpl();

        return dAO.addNewSupplier(connection, supplier);

    }

    public ResultSet getSupplier(Connection connection) throws SQLException, ClassNotFoundException {

        SupplierDAO dAO = new SupplierDAOImpl();
        
        return dAO.getSupplier(connection);

    }

}
