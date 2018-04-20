/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utsicom.webapp.dao;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author utsi
 */
public interface GenericDAO<T> {

    List<T> getAll() ;
<<<<<<< HEAD
    //List<T> getAllByDipo(String dipoName) ;
=======

>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
    void insert(T t) ;

    boolean delete(int id);

    void update(T t) ;

    T getById(int id) ;
<<<<<<< HEAD
    T getByName(String name);
    
=======

    List<T> getByName(String name) ;
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18

}
