/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.dao.impl;

import com.utsicom.webapp.dao.TransactionDAO;
import com.utsicom.webapp.entity.Transaction;
import java.sql.Connection;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import javax.persistence.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author utsi
 */
@Repository(value = "TransactionDAO")
public class TransactionDAOImpl extends GenericDAOImpl<Transaction> implements TransactionDAO {

    @Autowired(required = true)
    protected SessionFactory sessionFactory;
    protected Session session;

    @Override
    public List createViewById(int id) {
        session = sessionFactory.openSession();
        org.hibernate.Transaction tx = null;
        String sql = "create temporary view reports as select  t.added_date "
                + " as added_date, s.name as supplier_name, d.name as dipo_name, "
                + "i.name as item_name, i.price as price, t.item_received as "
                + "item_received, t.item_refilled as item_refilled, t.item_sold"
                + " as item_sold, t.received_amount as received_amount, "
                + "t.refilled_amount as refilled_amount, t.leakage_received "
                + "as leakage_received, t.leakage_returned "
                + "as leakage_returned from transactions t join suppliers"
                + " s on s.id= t.supplier_id join dipos d on d.id= t.dipo_id "
                + "join items i on i.id= t.item_id where  t.id=:id";
        Query query = session.createSQLQuery(sql);
        query.setParameter("id", id);
        tx.commit();
        List results = query.list();
        return query.list();

    }

}
