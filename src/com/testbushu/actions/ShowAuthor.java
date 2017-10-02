package com.testbushu.actions;


import java.util.ArrayList;
import java.util.List;

import java.sql.*;
import java.io.*;

import com.testbushu.beans.AuthorBean;


public class ShowAuthor{
	
	private List<AuthorBean> authorList;
	public void setAuthorList(List<AuthorBean> a){
		this.authorList=a;
	}
	public List<AuthorBean> getAuthorList(){
		return this.authorList;
	}
	public String execute() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
			Connection conn = DriverManager.getConnection(url,"mushroom","adminmushroom");
			Statement stmt = conn.createStatement();
			String sql = "select * from Author";
			ResultSet rs = stmt.executeQuery(sql);
			authorList = new ArrayList<AuthorBean>();
			while(rs.next()){
				AuthorBean ab = new AuthorBean();
				ab.setId(rs.getInt("AuthorId"));
				ab.setName(rs.getString("Name"));
				ab.setAge(rs.getByte("Age"));
				ab.setCountry(rs.getString("Country"));
				
				authorList.add(ab);
				
			}
			//request.setAttribute("authorList",list);
			rs.close();
			stmt.close();
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
