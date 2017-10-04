package com.testbushu.actions;

import java.sql.*; 
import com.testbushu.beans.AuthorBean;
import com.testbushu.beans.BookBean;

import java.util.ArrayList;   
import java.util.List;

public class authorAllBooks {
	private List<BookBean> boList;
	private AuthorBean au;

	public void setBoList(List<BookBean> b){
		this.boList  = b;
	}
	public List<BookBean> getBoList(){
		return this.boList;
	}
	
	public void setAu(AuthorBean a){
		this.au = a;
	}
	public AuthorBean getAu(){
		return this.au;
	}
	
	public String execute() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
			Connection conn = DriverManager.getConnection(url,"root","adminmushroom");
			Statement stmt = conn.createStatement();
			Statement stmt0 = conn.createStatement();
			String sqla  = "select * from Author where AuthorID="+this.getAu().getId();
			String sqlb = "select * from Book where AuthorID="+this.getAu().getId();
			ResultSet rsa = stmt.executeQuery(sqla);
			ResultSet rsb = stmt0.executeQuery(sqlb);
			boList = new ArrayList<BookBean>();
			if(rsa.next()){
				this.getAu().setName(rsa.getString("Name"));
				this.getAu().setAge(rsa.getByte("Age"));
				this.getAu().setCountry(rsa.getString("Country"));
			}
			while(rsb.next()){
				BookBean bb = new BookBean();
				bb.setIsbn(rsb.getString("ISBN"));
				bb.setTitle(rsb.getString("Title"));
				bb.setAuthorID(rsb.getInt("AuthorID"));
				bb.setPublisher(rsb.getString("Publisher"));
				bb.setPublishDate(rsb.getString("PublisherDate"));
				bb.setPrice(rsb.getFloat("Price"));
				
				boList.add(bb);
			}
			rsa.close();
			rsb.close();
			stmt0.close();
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
