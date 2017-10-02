package com.testbushu.actions;

import java.sql.*;

public class DeleteBook {
	private String isbn;
	
	public void setIsbn(String i){
		this.isbn = i;
	}
	public String getIsbn(){
		return this.isbn;
	}
	
	public String execute() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
			Connection conn = DriverManager.getConnection(url,"mushroom","adminmushroom");
			String sql = "delete from Book where ISBN=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, this.getIsbn());
			System.out.println(this.getIsbn());
			ps.executeUpdate();
			ps.close();
			conn.close();
			return "success";
		}catch(Exception e){
			e.printStackTrace();
			return  "error";
		}
	}
}
