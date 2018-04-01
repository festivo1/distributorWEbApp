/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.dao.impl;

import com.utsicom.webapp.dao.ReportDAO;
import com.utsicom.webapp.entity.Report;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author utsi
 */
@Repository(value = "ReportDAO")
public class ReportDAOImpl implements ReportDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Report> getAll() {
        return jdbcTemplate.query("select * from  reports", new RowMapper<Report>() {
            @Override
            public Report mapRow(ResultSet rs, int i) throws SQLException {
                Report report = new Report();
                report.setDate(rs.getDate("added_date"));
                report.setDiponame(rs.getString("dipo_name"));
                report.setSupplier(rs.getString("supplier_name"));
                report.setItem(rs.getString("item_name"));
                report.setPrice(rs.getInt("price"));
                report.setItemReceived(rs.getInt("item_received"));
                report.setItemRefilled(rs.getInt("item_refilled"));
                report.setReceivedAmount(rs.getInt("received_amount"));
                report.setRefilledAmount(rs.getInt("refilled_amount"));
                return report;

            }

        });

    }

}
