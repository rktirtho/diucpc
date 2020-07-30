/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diucpc.dao;

import com.diucpc.students.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rktirtho
 */
public class ApplicationDBHelper {

    DatabaseConnector connector = DatabaseConnector.getInstance();
    PreparedStatement statement;
    
    
    public static void main(String[] args) {
        ApplicationDBHelper dBHelper = new ApplicationDBHelper();
        
        Student student = new Student();
        
        student.setName("Rejaul Karim");
        student.setfName("Azizul Haque");
        student.setmName("Halima");
        student.setRoll("64");
        student.setReg("CS-234-434");
        student.setShift("Eveninf");
        student.setDepartment("CSE");  
        System.out.println(dBHelper.insertApplication(student));
    }
    

    public boolean insertApplication(Student student) {
        int status=0;

        Connection connection = connector.getConnection();
        try {
            statement = connection.prepareCall("insert into application_form ("
                    + " name ,"
                    + " fName ,"
                    + " mName ,"
                    + " rol,"
                    + " session ,"
                    + " depertment ,"
                    + " registration ) values(?,?,?,?,?,?,?)");
            statement.setString(1, student.getName());
            statement.setString(2, student.getfName());
            statement.setString(3, student.getmName());
            statement.setString(4, student.getRoll());
            statement.setString(5, student.getShift());
            statement.setString(6, student.getDepartment());
            statement.setString(7, student.getReg());
            
            status =  statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ApplicationDBHelper.class.getName()).log(Level.SEVERE, null, ex);
        }

        return status==1;

    }

}
