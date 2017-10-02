package com.testbushu.actions;
import com.opensymphony.xwork2.Action;  
import java.io.*;
import java.sql.*;
public class AddAuthor implements Action {
	private String name;
	private String country;
	private byte age;
	
	public void setName(String n){
		this.name=n;
	}
	public void setCountry(String c){
		this.country = c;
	}
	public void setAge(byte a){
		this.age = a;
	}
	public String getName(){
		return this.name;
	}
	public String getCountry(){
		return this.country;
	}
	public byte getAge(){
		return this.age;
	}
	
	public String execute() throws Exception{
		try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
		Connection conn = DriverManager.getConnection(url,"mushroom","adminmushroom");
		String sql = "insert into Author(Name,Age,Country) values(?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, this.getName());
		ps.setByte(2,this.getAge());
		ps.setString(3,this.getCountry());
		int row = ps.executeUpdate();
		ps.close();
		conn.close();
		if(row>0)return SUCCESS;
		else return NONE;
		}catch(Exception  e){
			e.printStackTrace();
			return ERROR;
			
		}
	}

}
