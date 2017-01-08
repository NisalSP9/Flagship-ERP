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
public class ClientModel {
    
    private String id;
    private String nic;
    private String client_name;
    private String address;
    private String phone_number;
    private String email;

    public ClientModel() {
    }

    public ClientModel(String id, String nic, String client_name, String address, String phone_number, String email) {
        this.id = id;
        this.nic = nic;
        this.client_name = client_name;
        this.address = address;
        this.phone_number = phone_number;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getClient_name() {
        return client_name;
    }

    public void setClient_name(String client_name) {
        this.client_name = client_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
}
