/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.cosmetic_pro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;


/**
 *
 * @author USER
 */
public class DB_CONNECTION {
    public Connection Con;
    public Statement Stmt;
    public PreparedStatement Pstmt;
    public ResultSet Rst;
    
    public DB_CONNECTION(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
                    String ConDb = "jdbc:mysql://localhost:3306/cosmetic";
                    String ConUsername = "root";
                    String ConPassword = "";
                    Con = DriverManager.getConnection(ConDb, ConUsername, ConPassword);
                    
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
    
}
