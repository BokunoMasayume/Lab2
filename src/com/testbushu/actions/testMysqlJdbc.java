package com.testbushu.actions;
import java.sql.*;
public class testMysqlJdbc {
    public static void main(String[] args){
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		System.out.println("Success loading Mysql Driver!");
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	try{
    		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","mushroom","adminmushroom");
    		Statement stmt = conn.createStatement();
    		ResultSet rs = stmt.executeQuery("select * from user");
    		while(rs.next()){
    			System.out.println(rs.getString("name"));
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	
    }
}
