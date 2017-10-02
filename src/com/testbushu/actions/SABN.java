package com.testbushu.actions;

import java.sql.*;
import java.io.*;

import java.util.ArrayList;
import java.util.List;

import com.testbushu.beans.AuthorBean;

public class SABN {//search author by name
    private List<AuthorBean> aaaList;
    private String seaStr;
    private Boolean isResult;
    private Boolean hasAuthor;
    
    public void setSeaStr(String s){
    	this.seaStr = s;
    }
    public String getSeaStr(){
    	return this.seaStr;
    }
    public void setAaaList(List<AuthorBean> a){
    	this.aaaList= new ArrayList<AuthorBean>();
		this.aaaList=a;
	}
	public List<AuthorBean> getAaaList(){
		return this.aaaList;
	}
	
	public void setIsResult(Boolean a){
		this.isResult = a;
	}
	public Boolean getIsResult(){
		return this.isResult;
	}
	
	public void setHasAuthor(Boolean b){
		this.hasAuthor = b;
	}
	public Boolean getHasAuthor(){
		return this.hasAuthor;
	}
	
	public String execute() throws Exception{
		try{
			this.setIsResult(true);
			this.setHasAuthor(false);
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
			Connection conn = DriverManager.getConnection(url,"mushroom","adminmushroom");
			Statement stmt = conn.createStatement();
			String sql = "select * from Author where Name Like \'%" + this.getSeaStr()+"%\'";
			//System.out.print(sql);
			ResultSet rs = stmt.executeQuery(sql);
			aaaList = new ArrayList<AuthorBean>();
			while(rs.next()){
				AuthorBean ab = new AuthorBean();
				ab.setId(rs.getInt("AuthorId"));
				ab.setName(rs.getString("Name"));
				ab.setAge(rs.getByte("Age"));
				ab.setCountry(rs.getString("Country"));
				
				this.setHasAuthor(true);
				
				aaaList.add(ab);
			}
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
