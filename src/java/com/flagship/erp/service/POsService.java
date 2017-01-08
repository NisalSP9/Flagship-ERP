/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service;

import com.flagship.erp.model.OPSModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author aDMIN
 */
public interface POsService {

    public boolean addOPs(OPSModel model, Connection connection) throws SQLException, ClassNotFoundException;

    public ResultSet viewAllPOs(Connection connection) throws SQLException, ClassNotFoundException;

    public boolean deleteOPs(Connection connection, String id) throws SQLException, ClassNotFoundException;

    public boolean QTYapp(Connection connection, String id, String date) throws SQLException, ClassNotFoundException;

    public ResultSet modiAppedQTY(Connection connection) throws SQLException, ClassNotFoundException;

    public boolean cancelAppQTY(Connection connection, String id) throws SQLException, ClassNotFoundException;

    public ResultSet pendingPurApp(Connection connection) throws SQLException, ClassNotFoundException;

    public boolean purchaseApp(Connection connection, String id, String supName, double unitPrice, String date, String sup_id) throws SQLException, ClassNotFoundException;

    public ResultSet modiPurcApp(Connection connection) throws SQLException, ClassNotFoundException;

    public boolean cancelPurcApp(Connection connection, String id) throws SQLException, ClassNotFoundException;

    public ResultSet readyToPrint(Connection connection,String name,String off) throws SQLException, ClassNotFoundException;

    public boolean rejectQTYAPP(Connection connection, String id, String note) throws SQLException, ClassNotFoundException;

    public ResultSet pendingQTYApp(Connection connection) throws SQLException, ClassNotFoundException;

    public ResultSet rejectedPOs(Connection connection) throws SQLException, ClassNotFoundException;

    public ResultSet priviouseOrders(Connection connection, String id, String phase, String element, String item) throws SQLException, ClassNotFoundException;

    public boolean updatePOS(Connection connection, OPSModel model) throws SQLException, ClassNotFoundException;

    public ResultSet getSuppliersInPOS(Connection connection) throws SQLException, ClassNotFoundException;

    }
