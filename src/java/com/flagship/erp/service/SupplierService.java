/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service;

import com.flagship.erp.model.Supplier;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public interface SupplierService {
    public boolean addNewSupplier(Connection connection, Supplier supplier) throws SQLException,ClassNotFoundException;
    public ResultSet getSupplier(Connection connection) throws SQLException, ClassNotFoundException;
}
