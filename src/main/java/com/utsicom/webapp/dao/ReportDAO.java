/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.dao;

import com.utsicom.webapp.entity.Report;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author utsi
 */

public interface ReportDAO {
    List<Report> getAll();
    
}
