/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.dao.impl;

import com.flagship.erp.connection.factory.DatabaseResourceFactory;
import com.flagship.erp.dao.EmployeeDAO;
import com.flagship.erp.model.EmployeeModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author aDMIN
 */
public class EmployeeDAOImpl implements EmployeeDAO {

    public boolean addNewEmployee(EmployeeModel model, Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "insert into employee value(0,'" + model.getName() + "','" + model.getNic() + "','" + model.getAddress() + "','" + model.getEmail_personal() + "','" + model.getLandline() + "','" + model.getMobile() + "','" + model.getStatus() + "','" + model.getVehicle() + "','" + model.getIncentive() + "','" + model.getDepartment() + "','" + model.getGrade() + "','" + model.getPosition() + "','" + model.getEpf_number() + "','" + model.getBasic_salary() + "','" + model.getRe_allo() + "','" + model.getBu_allo() + "','" + model.getVe_allo() + "','" + model.getTra_allo() + "','" + model.getEpf() + "','"+model.getEtf()+"','" + model.getSalary() + "')";

        Statement statement = connection.createStatement();

        boolean rst = 0 < statement.executeUpdate(sql);

        return rst;
    }

    public ResultSet ViewAllEmployee(Connection connection) throws SQLException, ClassNotFoundException {

        String sql = "Select * from employee";

        Statement statement = connection.createStatement();

        return statement.executeQuery(sql);

    }

}
