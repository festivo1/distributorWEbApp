/*
<<<<<<< HEAD
 * Copyright 2018 utsi.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
=======
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
 */
package com.utsicom.webapp.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
<<<<<<< HEAD
import javax.persistence.CascadeType;
=======
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

/**
 *
 * @author utsi
 */
@Entity
@Table(name = "dipos")
@NamedQueries({
    @NamedQuery(name = "Dipo.findAll", query = "SELECT d FROM Dipo d")})
public class Dipo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
<<<<<<< HEAD
    
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "address")
    private String address;
    
    @Column(name = "contact_number")
    private String contactNumber;
    
=======
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 80)
    @Column(name = "name")
    private String name;
    @Size(max = 20)
    @Column(name = "address")
    private String address;
    @Size(max = 15)
    @Column(name = "contact_number")
    private String contactNumber;
    @Size(max = 15)
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
    @Column(name = "pan_number")
    private String panNumber;
    @Column(name = "added_date", insertable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date addedDate;
<<<<<<< HEAD
    @Size(max = 50)
    @Column(name = "password")
    private String password;
 
    @OneToMany(mappedBy = "dipo")
=======
    @OneToMany(mappedBy = "dipo") // mappedby ma Entity name not by id
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
    private List<Transaction> transactionList;

    public Dipo() {
    }

    public Dipo(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getPanNumber() {
        return panNumber;
    }

    public void setPanNumber(String panNumber) {
        this.panNumber = panNumber;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

<<<<<<< HEAD
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


=======
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
    public List<Transaction> getTransactionList() {
        return transactionList;
    }

    public void setTransactionList(List<Transaction> transactionList) {
        this.transactionList = transactionList;
    }

<<<<<<< HEAD
=======
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dipo)) {
            return false;
        }
        Dipo other = (Dipo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.utsicom.webapp.entity.Dipo[ id=" + id + " ]";
    }
    
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
}
