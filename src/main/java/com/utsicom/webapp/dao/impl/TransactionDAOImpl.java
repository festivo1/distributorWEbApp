/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.dao.impl;

import com.utsicom.webapp.dao.TransactionDAO;
import com.utsicom.webapp.entity.Transaction;
import org.springframework.stereotype.Repository;

/**
 *
 * @author utsi
 */
@Repository(value = "TransactionDAO")
public class TransactionDAOImpl extends GenericDAOImpl<Transaction> implements TransactionDAO{
    
}
