/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.controller;

import com.utsicom.webapp.dao.DipoDAO;
import com.utsicom.webapp.dao.ItemDAO;
import com.utsicom.webapp.dao.ReportDAO;
import com.utsicom.webapp.dao.SupplierDAO;
import com.utsicom.webapp.dao.TransactionDAO;
import javax.ws.rs.PathParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author utsi
 */
@Controller
@RequestMapping(value = "/transactions")

public class TransactionController {

    @Autowired
    TransactionDAO transactionDAO;
    @Autowired
    ItemDAO itemDAO;
    @Autowired
    SupplierDAO supplierDAO;
    @Autowired
    DipoDAO dipoDAO;
    @Autowired
    ReportDAO reportDAO;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("items", itemDAO.getAll());
        model.addAttribute("suppliers", supplierDAO.getAll());
        model.addAttribute("dipos", dipoDAO.getAll());
        model.addAttribute("transactions", transactionDAO.getAll());
        System.out.println(transactionDAO.getAll());
        return "admin/transactions/index";
    }

    @RequestMapping(value = "/report/{id}", method = RequestMethod.GET)
    public String transactionDetails(@PathVariable int id, Model model, ModelMap map) {
        model.addAttribute("items", itemDAO.getAll());
        model.addAttribute("suppliers", supplierDAO.getAll());
        model.addAttribute("dipos", dipoDAO.getAll());
        //transactionDAO.createViewById(id);
        model.addAttribute("reports", reportDAO.getAll());
        System.out.println(reportDAO.getAll());
        return "/admin/dipos/dipoReport";

    }
}
