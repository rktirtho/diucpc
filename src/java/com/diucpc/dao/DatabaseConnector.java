/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diucpc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rktirtho
 */
public class DatabaseConnector {

    private Connection connection;
    private static DatabaseConnector connector= new DatabaseConnector();

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/",
                    "root", "root");

            Statement statement = connection.createStatement();
             

            statement.execute("CREATE DATABASE IF NOT EXISTs DIUCPC");
            
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/" 
                     + "DIUCPC","root", "root");
            statement = connection.createStatement();

            statement.execute("CREATE TABLE IF NOT EXISTs application_form("
                    + " id" + " int(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,"
                    + " name varchar(50) NOT NULL,"
                    + " fName varchar(50) NOT NULL,"
                    + " mName varchar(50) NOT NULL,"
                    + " rol varchar(50) NOT NULL,"
                    + " session varchar(50) NOT NULL,"
                    + " depertment varchar(50) NOT NULL,"
                    + " registration varchar(50) NOT NULL,"
                    + " reg_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP"
                    + ")");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }

    public static void main(String[] args) {
        
        try {
            System.out.println(getInstance().getConnection().getClientInfo());
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private DatabaseConnector(){
    }
    
    public static DatabaseConnector getInstance() {
        if (connector == null) {
            connector = new DatabaseConnector();
        }
        return connector;
    }

}
