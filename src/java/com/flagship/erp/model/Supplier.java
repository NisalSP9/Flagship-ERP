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
public class Supplier {
    
    private String id;
    private String name;
    private String NIC;
    private String contact_number;
    private String address;
    private String email;
    private String bank;
    private String account;
    private String company_name;
    private String PV_no;

    public Supplier() {
    }

    public Supplier(String id, String name, String NIC, String contact_number, String address, String email, String bank, String account, String company_name, String PV_no) {
        this.id = id;
        this.name = name;
        this.NIC = NIC;
        this.contact_number = contact_number;
        this.address = address;
        this.email = email;
        this.bank = bank;
        this.account = account;
        this.company_name = company_name;
        this.PV_no = PV_no;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNIC() {
        return NIC;
    }

    public void setNIC(String NIC) {
        this.NIC = NIC;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getPV_no() {
        return PV_no;
    }

    public void setPV_no(String PV_no) {
        this.PV_no = PV_no;
    }
    
    
    
    
    
    
}
