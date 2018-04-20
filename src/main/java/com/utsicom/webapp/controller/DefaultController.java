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
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
=======
import org.springframework.web.bind.annotation.RestController;
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18

/**
 *
 * @author utsi
 */
@Controller
<<<<<<< HEAD
public class DefaultController {
   
	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView welcomePage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is welcome page!");
		model.setViewName("login/index");
		return model;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected page!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login/index");

		return model;

	}
        @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String create(Model model) {

        //model.addAttribute("dipos", dipoDAO.getAll());
       
        return "login/create";
    }

}
=======
@RequestMapping(value = "/")
public class DefaultController {
    @Autowired
    DipoDAO dipoDAO;
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model){
         model.addAttribute("dipos", dipoDAO.getAll());
        return "admin/dipos/index";
    }
    @RequestMapping(value = "api/dipo", method = RequestMethod.GET)
    public List<Dipo> listOfDipo(){
        return dipoDAO.getAll();
    }
    
}
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
