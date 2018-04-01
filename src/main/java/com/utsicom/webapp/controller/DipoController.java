/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.controller;

import com.utsicom.webapp.dao.DipoDAO;
import com.utsicom.webapp.dto.DipoDTO;
import com.utsicom.webapp.entity.Dipo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author utsi
 */
@Controller
@RequestMapping(value = "/dipos")
public class DipoController {
   
    @Autowired
    DipoDAO dipoDAO;
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model){
         model.addAttribute("dipos", dipoDAO.getAll());
        return "admin/dipos/index";
    }
    @RequestMapping(value = "/create")
    public String create(Model model) {

        model.addAttribute("dipos", dipoDAO.getAll());
       
        return "admin/dipos/create";
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(DipoDTO dipoDTO){
        Dipo dipo=new Dipo();
        dipo.setId(dipoDTO.getId());
        dipo.setName(dipoDTO.getName());
        dipo.setAddress(dipoDTO.getAddress());
        dipo.setContactNumber(dipoDTO.getContactNumber());
        dipo.setPanNumber(dipoDTO.getPanNumber());
        if(dipoDTO.getId()>0){
        dipoDAO.update(dipo);
        }else{
            dipoDAO.insert(dipo);
        }
        return "redirect:/dipos";
    }
 }

