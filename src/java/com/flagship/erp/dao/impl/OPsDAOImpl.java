/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.model.OPSModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.flagship.erp.dao.POsDAO;

/**
 *
 * @author aDMIN
 */
public class OPsDAOImpl implements POsDAO {

    public boolean addOPs(OPSModel model, Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "insert into pos value (0,"
                + "'" + model.getSiteID() + "',"
                + "default,"
                + "'" + model.getClientName() + "',"
                + "'" + model.getTOName() + "',"
                + "'" + model.getOfficer() + "',"
                + "'" + model.getPhase() + "',"
                + "'" + model.getElement() + "',"
                + "'" + model.getItem() + "',"
                + "'" + model.getDescription() + "',"
                + "'" + model.getQty() + "',"
                + "'" + model.getUnit() + "',"
                + "default,"
                + "default,"
                + "default,"
                + "default,"
                + "default,"
                + "default,"
                + "'" + model.getDate() + "',"
                + "default,"
                + "default,"
                + "default,"
                + "default,"
                + "default,"                
                + "default)";

        Statement s = connection.createStatement();

        boolean rst = 0 < s.executeUpdate(sql);

        connection.close();

        return rst;

    }

    public ResultSet viewAllPOs(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select pos_id,site_id,client_name,TO_name,officer,phase,element,item,description,qty,units,po_date from pos where qty_app = 'false'";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;

    }

    public boolean deleteOPs(Connection connection, String id) throws SQLException, ClassNotFoundException {

        String sql = "delete from pos where pos_id = '" + id + "' ";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);
    }

    public boolean QTYapp(Connection connection, String id, String date) throws SQLException, ClassNotFoundException {

        String sql = "update pos set qty_app='true',qty_date='" + date + "' where pos_id = '" + id + "'";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);

    }

    public ResultSet modiAppedQTY(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select pos_id,site_id,client_name,TO_name,officer,phase,element,item,description,qty,units,po_date from pos where qty_app = 'true' and purchase_app = 'false'";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;

    }

    public boolean cancelAppQTY(Connection connection, String id) throws SQLException, ClassNotFoundException {

        String sql = "update pos set qty_app = default,qty_date=default where pos_id = '" + id + "' ";

        Statement s = connection.createStatement();

        return 0 < s.executeUpdate(sql);

    }

    public ResultSet pendingPurApp(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select pos_id,site_id,client_name,TO_name,officer,phase,element,item,description,qty,units,po_date,qty_date from pos where qty_app = 'true' and purchase_app = 'false' limit 1";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;

    }

    public boolean purchaseApp(Connection connection, String id, String supName, double unitPrice, String date,String sup_id) throws SQLException, ClassNotFoundException {

        //String sql = "update pos set purchase_app='true',supplier_name='"+supName+"',unit_price='"+unitPrice+"',total='"+total+"',purchase_date='" + date + "' where pos_id = '" + id + "'";
        String sql = "update pos set purchase_app='true',supplier_name='" + supName + "',unit_price='" + unitPrice + "',total=(unit_price*qty),purchase_date='" + date + "',supplier_id='"+sup_id+"' where pos_id = '" + id + "'";

        Statement statement = connection.createStatement();

        return 0 < statement.executeUpdate(sql);

    }

    public ResultSet modiPurcApp(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select pos_id,site_id,client_name,TO_name,officer,phase,element,item,description,qty,units,supplier_name,unit_price,total,po_date,qty_date from pos where qty_app = 'true' and purchase_app = 'true'";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;

    }

    public boolean cancelPurcApp(Connection connection, String id) throws SQLException, ClassNotFoundException {

        String sql = "update pos set purchase_app = default,purchase_date=default,supplier_name=default,unit_price=default,total=default where pos_id = '" + id + "' ";

        Statement s = connection.createStatement();

        return 0 < s.executeUpdate(sql);

    }

    public ResultSet readyToPrint(Connection connection,String name,String off) throws SQLException, ClassNotFoundException {

        String sql = "select pos_id,site_id,supplier_id,officer,supplier_name,phase,item,description,qty,units,total  from pos where purchase_app = 'true' and print='false' and supplier_id= '"+name+"' and officer = '"+off+"'";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;

    }

    public boolean rejectQTYAPP(Connection connection, String id, String note) throws SQLException, ClassNotFoundException {

        String sql = "update pos set qty_app_reject = 'true',qty_app_reject_note = '" + note + "' where pos_id = '" + id + "' ";

        Statement s = connection.createStatement();

        return 0 < s.executeUpdate(sql);

    }

    public ResultSet pendingQTYApp(Connection connection) throws SQLException, ClassNotFoundException {
        
        String sql = "select pos_id,site_id,client_name,TO_name,officer,phase,element,item,description,qty,units,po_date from pos where qty_app = 'false' and qty_app_reject = 'false' limit 1";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;
    }

    public ResultSet rejectedPOs(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select pos_id,site_id,client_name,TO_name,officer,phase,element,item,description,qty,units,po_date,qty_app_reject_note from pos where qty_app = 'false' and qty_app_reject = 'true'";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;
        

    }

    public ResultSet priviouseOrders(Connection connection, String id, String phase, String element, String item) throws SQLException, ClassNotFoundException {

        String sql = "SELECT site_id,officer,phase,element,item,qty,units,po_date FROM pos where qty_app='true' and qty_app_reject = 'false' and site_id="+id+" and phase='"+phase+"' and element='"+element+"' and item='"+item+"'";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;


    }

    public boolean updatePOS(Connection connection, OPSModel model) throws SQLException, ClassNotFoundException {

        String sql = "update pos set officer='"+model.getOfficer()+"',phase='"+model.getPhase()+"',element='"+model.getElement()+"',item='"+model.getItem()+"',description='"+model.getDescription()+"',qty='"+model.getQty()+"',units='"+model.getUnit()+"' where pos_id='"+model.getOpsID()+"'";
        
        Statement statement = connection.createStatement();
        
        return 0 < statement.executeUpdate(sql);

    }

    public ResultSet getSuppliersInPOS(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "select DISTINCT supplier_id,supplier_name from pos order by supplier_id";

        Statement s = connection.createStatement();

        ResultSet resultSet = s.executeQuery(sql);

        return resultSet;
        
        
        


    }

}
