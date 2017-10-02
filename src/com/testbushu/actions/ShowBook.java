package com.testbushu.actions;


import java.util.ArrayList;   
import java.util.List;

import java.sql.*;
import java.io.*;

import com.testbushu.beans.BookBean;
import com.testbushu.beans.AuthorBean;

public class ShowBook {
	private List<BookBean> bookList;

	public void setBookList(List<BookBean> b){
		this.bookList  = b;
	}
	public List<BookBean> getBookList(){
		return this.bookList;
	}

	public String execute() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
			Connection conn = DriverManager.getConnection(url,"mushroom","adminmushroom");
			Statement stmt = conn.createStatement();
			Statement stmt0 = conn.createStatement();
			String sql = "select * from Book";
			ResultSet rs = stmt.executeQuery(sql);
			bookList = new ArrayList<BookBean>();
			while(rs.next()){
				BookBean bb = new BookBean();
				bb.setIsbn(rs.getString("ISBN"));
				bb.setTitle(rs.getString("Title"));
				bb.setAuthorID(rs.getInt("AuthorID"));
				bb.setPublisher(rs.getString("Publisher"));
				bb.setPublishDate(rs.getString("PublisherDate"));
				bb.setPrice(rs.getFloat("Price"));
				
				AuthorBean ab = new AuthorBean();
				
				String sql0 = "select * from Author where AuthorID = "+bb.getAuthorID();
				ResultSet rs0 = stmt0.executeQuery(sql0);
				rs0.next();
				ab.setId(rs0.getInt("AuthorId"));
				ab.setName(rs0.getString("Name"));
				ab.setAge(rs0.getByte("Age"));
				ab.setCountry(rs0.getString("Country"));
				
				
				bb.setAuthor(ab);
				
				bookList.add(bb);
				rs0.close();
			}
			stmt0.close();
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
