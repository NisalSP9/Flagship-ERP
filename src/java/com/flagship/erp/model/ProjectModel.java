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
public class ProjectModel {
    
    private String project_id;
    private String client_id;
    private String client_name;
    private String salesman_name;
    private String architect_name;
    private String siteTO_name;
    private String sub_contractor_name;
    
    private String status;
    private String site_address;
    private String project_price;
    
    private String date;
    
    private String note;
    private String remaks;
    private String structural;
    private String MEP;
    private String council_status;

    public ProjectModel() {
    }

    public ProjectModel(String project_id, String client_name, String siteTO_name) {
        this.project_id = project_id;
        this.client_name = client_name;
        this.siteTO_name = siteTO_name;
    }

    public ProjectModel(String project_id, String client_id, String client_name, String salesman_name, String architect_name, String siteTO_name, String sub_contractor_name, String status, String site_address, String project_price, String date, String note, String remaks, String structural, String MEP, String council_status) {
        this.project_id = project_id;
        this.client_id = client_id;
        this.client_name = client_name;
        this.salesman_name = salesman_name;
        this.architect_name = architect_name;
        this.siteTO_name = siteTO_name;
        this.sub_contractor_name = sub_contractor_name;
        this.status = status;
        this.site_address = site_address;
        this.project_price = project_price;
        this.date = date;
        this.note = note;
        this.remaks = remaks;
        this.structural = structural;
        this.MEP = MEP;
        this.council_status = council_status;
    }

    public String getProject_id() {
        return project_id;
    }

    public void setProject_id(String project_id) {
        this.project_id = project_id;
    }

    public String getClient_id() {
        return client_id;
    }

    public void setClient_id(String client_id) {
        this.client_id = client_id;
    }

    public String getClient_name() {
        return client_name;
    }

    public void setClient_name(String client_name) {
        this.client_name = client_name;
    }

    public String getSalesman_name() {
        return salesman_name;
    }

    public void setSalesman_name(String salesman_name) {
        this.salesman_name = salesman_name;
    }

    public String getArchitect_name() {
        return architect_name;
    }

    public void setArchitect_name(String architect_name) {
        this.architect_name = architect_name;
    }

    public String getSiteTO_name() {
        return siteTO_name;
    }

    public void setSiteTO_name(String siteTO_name) {
        this.siteTO_name = siteTO_name;
    }

    public String getSub_contractor_name() {
        return sub_contractor_name;
    }

    public void setSub_contractor_name(String sub_contractor_name) {
        this.sub_contractor_name = sub_contractor_name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSite_address() {
        return site_address;
    }

    public void setSite_address(String site_address) {
        this.site_address = site_address;
    }

    public String getProject_price() {
        return project_price;
    }

    public void setProject_price(String project_price) {
        this.project_price = project_price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getRemaks() {
        return remaks;
    }

    public void setRemaks(String remaks) {
        this.remaks = remaks;
    }

    public String getStructural() {
        return structural;
    }

    public void setStructural(String structural) {
        this.structural = structural;
    }

    public String getMEP() {
        return MEP;
    }

    public void setMEP(String MEP) {
        this.MEP = MEP;
    }

    public String getCouncil_status() {
        return council_status;
    }

    public void setCouncil_status(String council_status) {
        this.council_status = council_status;
    }

    
}
