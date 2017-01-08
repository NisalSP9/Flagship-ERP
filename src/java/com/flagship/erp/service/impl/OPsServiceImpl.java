/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.service.impl;

import com.flagship.erp.dao.POsDAO;
import com.flagship.erp.dao.impl.OPsDAOImpl;
import com.flagship.erp.model.OPSModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.flagship.erp.service.POsService;

/**
 *
 * @author aDMIN
 */
public class OPsServiceImpl implements POsService {

    public boolean addOPs(OPSModel model, Connection connection) throws SQLException, ClassNotFoundException {

        OPsDAOImpl dAOImpl = new OPsDAOImpl();

        return dAOImpl.addOPs(model, connection);

    }

    public ResultSet viewAllPOs(Connection connection) throws SQLException, ClassNotFoundException {

        OPsDAOImpl dAOImpl = new OPsDAOImpl();

        return dAOImpl.viewAllPOs(connection);

    }

    public boolean deleteOPs(Connection connection, String id) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.deleteOPs(connection, id);

    }

    public boolean QTYapp(Connection connection, String id, String date) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.QTYapp(connection, id, date);

    }

    public ResultSet modiAppedQTY(Connection connection) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.modiAppedQTY(connection);

    }

    public boolean cancelAppQTY(Connection connection, String id) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.cancelAppQTY(connection, id);

    }

    public ResultSet pendingPurApp(Connection connection) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.pendingPurApp(connection);

    }

    public boolean purchaseApp(Connection connection, String id, String supName, double unitPrice, String date,String sup_id) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.purchaseApp(connection, id, supName, unitPrice, date,sup_id);

    }

    public ResultSet modiPurcApp(Connection connection) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.modiPurcApp(connection);

    }

    public boolean cancelPurcApp(Connection connection, String id) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.cancelPurcApp(connection, id);

    }

    public ResultSet readyToPrint(Connection connection,String name,String off) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.readyToPrint(connection,name,off);

    }

    public boolean rejectQTYAPP(Connection connection, String id, String note) throws SQLException, ClassNotFoundException {

        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.rejectQTYAPP(connection, id, note);
    }

    public ResultSet pendingQTYApp(Connection connection) throws SQLException, ClassNotFoundException {
        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.pendingQTYApp(connection);
    }

    public ResultSet rejectedPOs(Connection connection) throws SQLException, ClassNotFoundException {
        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.rejectedPOs(connection);
    }

    public ResultSet priviouseOrders(Connection connection, String id, String phase, String element, String item) throws SQLException, ClassNotFoundException {
    
        POsDAO pOsDAO = new OPsDAOImpl();

        return pOsDAO.priviouseOrders(connection, id, phase, element, item);
    
    }

    public boolean updatePOS(Connection connection, OPSModel model) throws SQLException, ClassNotFoundException {

        POsDAO dAO = new OPsDAOImpl();
        
        return dAO.updatePOS(connection, model);

    }

    public ResultSet getSuppliersInPOS(Connection connection) throws SQLException, ClassNotFoundException {

        POsDAO dAO = new OPsDAOImpl();
        
        return dAO.getSuppliersInPOS(connection);


    }

}
