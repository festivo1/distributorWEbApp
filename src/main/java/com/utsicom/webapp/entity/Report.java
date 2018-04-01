/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import org.hibernate.annotations.Immutable;

/**
 *
 * @author utsi
 */


public class Report  {
    
    private Date date;
    private String supplier;
    private String diponame;
    private String item;
    private Integer price;
    private Integer itemReceived;
    private Integer itemRefilled;
    private Integer receivedAmount;
    private Integer refilledAmount;

    public Report() {
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getDiponame() {
        return diponame;
    }

    public void setDiponame(String diponame) {
        this.diponame = diponame;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getItemReceived() {
        return itemReceived;
    }

    public void setItemReceived(Integer itemReceived) {
        this.itemReceived = itemReceived;
    }

    public Integer getItemRefilled() {
        return itemRefilled;
    }

    public void setItemRefilled(Integer itemRefilled) {
        this.itemRefilled = itemRefilled;
    }

    public Integer getReceivedAmount() {
        return receivedAmount;
    }

    public void setReceivedAmount(Integer receivedAmount) {
        this.receivedAmount = receivedAmount;
    }

    public Integer getRefilledAmount() {
        return refilledAmount;
    }

    public void setRefilledAmount(Integer refilledAmount) {
        this.refilledAmount = refilledAmount;
    }
    
}
