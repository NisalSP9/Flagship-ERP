/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.flagship.erp.model;

/**
 *
 * @author aDMIN
 */
public class EmployeeModel {
    
    private int emp_id;
    private String name;
    private String nic;
    private String address;
    private String email_personal;
    private String landline;
    private String mobile;
    private String status;
    private String vehicle;
    private String incentive;
    private String department;
    private String grade;
    private String position;
    private String epf_number;
    private double basic_salary;
    private String re_allo;
    private String bu_allo;
    private String ve_allo;
    private String tra_allo;
    private double epf;
    private double etf;
    private double salary;

    public EmployeeModel() {
    }

    public EmployeeModel(int emp_id, String name, String nic, String address, String email_personal, String landline, String mobile, String status, String vehicle, String incentive, String department, String grade, String position, String epf_number, double basic_salary, String re_allo, String bu_allo, String ve_allo, String tra_allo, double epf, double etf, double salary) {
        this.emp_id = emp_id;
        this.name = name;
        this.nic = nic;
        this.address = address;
        this.email_personal = email_personal;
        this.landline = landline;
        this.mobile = mobile;
        this.status = status;
        this.vehicle = vehicle;
        this.incentive = incentive;
        this.department = department;
        this.grade = grade;
        this.position = position;
        this.epf_number = epf_number;
        this.basic_salary = basic_salary;
        this.re_allo = re_allo;
        this.bu_allo = bu_allo;
        this.ve_allo = ve_allo;
        this.tra_allo = tra_allo;
        this.epf = epf;
        this.etf = etf;
        this.salary = salary;
    }

    public double getEtf() {
        return etf;
    }

    public void setEtf(double etf) {
        this.etf = etf;
    }

    public int getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(int emp_id) {
        this.emp_id = emp_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail_personal() {
        return email_personal;
    }

    public void setEmail_personal(String email_personal) {
        this.email_personal = email_personal;
    }

    public String getLandline() {
        return landline;
    }

    public void setLandline(String landline) {
        this.landline = landline;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    public String getIncentive() {
        return incentive;
    }

    public void setIncentive(String incentive) {
        this.incentive = incentive;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getEpf_number() {
        return epf_number;
    }

    public void setEpf_number(String epf_number) {
        this.epf_number = epf_number;
    }

    public double getBasic_salary() {
        return basic_salary;
    }

    public void setBasic_salary(double basic_salary) {
        this.basic_salary = basic_salary;
    }

    public String getRe_allo() {
        return re_allo;
    }

    public void setRe_allo(String re_allo) {
        this.re_allo = re_allo;
    }

    public String getBu_allo() {
        return bu_allo;
    }

    public void setBu_allo(String bu_allo) {
        this.bu_allo = bu_allo;
    }

    public String getVe_allo() {
        return ve_allo;
    }

    public void setVe_allo(String ve_allo) {
        this.ve_allo = ve_allo;
    }

    public String getTra_allo() {
        return tra_allo;
    }

    public void setTra_allo(String tra_allo) {
        this.tra_allo = tra_allo;
    }

    public double getEpf() {
        return epf;
    }

    public void setEpf(double epf) {
        this.epf = epf;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
    
    
    

}
