/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.controller;

import com.utsicom.webapp.dao.DipoDAO;
import com.utsicom.webapp.entity.Dipo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author utsi
 */
@Controller
@RequestMapping(value = "/")
public class DefaultController {
    @Autowired
    DipoDAO dipoDAO;
    @RequestMapping(method = RequestMethod.GET)
    public String index(){
         return "admin/background";
    }
    
}
