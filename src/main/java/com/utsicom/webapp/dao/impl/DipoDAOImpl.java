/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.dao.impl;

import com.utsicom.webapp.dao.DipoDAO;
import com.utsicom.webapp.entity.Dipo;
import org.springframework.stereotype.Repository;

@Repository(value = "DipoDAO")
public class DipoDAOImpl extends GenericDAOImpl<Dipo> implements DipoDAO{
    
}
