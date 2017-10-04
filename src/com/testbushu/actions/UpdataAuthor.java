package com.testbushu.actions;

import java.sql.*; 
import com.testbushu.beans.AuthorBean;

public class UpdataAuthor {
	private AuthorBean authorMsg;
	
	public void setAuthorMsg(AuthorBean a){
		this.authorMsg = a;
	}
	public AuthorBean getAuthorMsg(){
		return this.authorMsg;
	}
	
	public String execute() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
	    	String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
	    	Connection conn = DriverManager.getConnection(url,"root","adminmushroom");
	    	String sql = "update Author set Name=? ,Age=?,Country=? where AuthorID=?";
	    	PreparedStatement  ps = conn.prepareStatement(sql);
	    	ps.setString(1, this.getAuthorMsg().getName());
	    	ps.setByte(2, this.getAuthorMsg().getAge());
	    	ps.setString(3, this.getAuthorMsg().getCountry());
	    	ps.setInt(4, this.getAuthorMsg().getId());
	    	ps.executeUpdate();
    		ps.close();
    		conn.close();
    		return "success";
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			return "error";
		}catch(SQLException e){
			e.printStackTrace();
			return "error";
		}
	}
}
