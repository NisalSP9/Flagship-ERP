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
public class OPSModel {
    
    private String opsID;
    private String siteID;
    private String clientName;
    private String TOName;
    private String officer;
    private String phase;
    private String element;
    private String item;
    private String description;
    private double qty;
    private String unit;
    private String supplierName;
    private double unitPrice;
    private double total;
    private boolean qtrApp;
    private boolean purApp;
    private boolean print;
    private String date;

    public OPSModel() {
    }

    public OPSModel(String opsID, String siteID, String clientName, String TOName, String officer, String phase, String element, String item, String description, double qty, String unit, boolean qtrApp, boolean purApp, boolean print, String date) {
        this.opsID = opsID;
        this.siteID = siteID;
        this.clientName = clientName;
        this.TOName = TOName;
        this.officer = officer;
        this.phase = phase;
        this.element = element;
        this.item = item;
        this.description = description;
        this.qty = qty;
        this.unit = unit;
        this.qtrApp = qtrApp;
        this.purApp = purApp;
        this.print = print;
        this.date = date;
    }

    public String getOpsID() {
        return opsID;
    }

    public void setOpsID(String opsID) {
        this.opsID = opsID;
    }

    public String getSiteID() {
        return siteID;
    }

    public void setSiteID(String siteID) {
        this.siteID = siteID;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getTOName() {
        return TOName;
    }

    public void setTOName(String TOName) {
        this.TOName = TOName;
    }

    public String getOfficer() {
        return officer;
    }

    public void setOfficer(String officer) {
        this.officer = officer;
    }

    public String getPhase() {
        return phase;
    }

    public void setPhase(String phase) {
        this.phase = phase;
    }

    public String getElement() {
        return element;
    }

    public void setElement(String element) {
        this.element = element;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getQty() {
        return qty;
    }

    public void setQty(double qty) {
        this.qty = qty;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public boolean isQtrApp() {
        return qtrApp;
    }

    public void setQtrApp(boolean qtrApp) {
        this.qtrApp = qtrApp;
    }

    public boolean isPurApp() {
        return purApp;
    }

    public void setPurApp(boolean purApp) {
        this.purApp = purApp;
    }

    public boolean isPrint() {
        return print;
    }

    public void setPrint(boolean print) {
        this.print = print;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }


    
    
}
