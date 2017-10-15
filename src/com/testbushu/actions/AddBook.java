package com.testbushu.actions;

import com.opensymphony.xwork2.Action;  
import java.io.*;
import java.sql.*;
public class AddBook implements Action{
	private String isbn;
    private String title;
    private String authorName;//int authorId
    private String publisher;
    private float price;
    private String pyear;
    private String pmonth;
    private String pday;
    
    public void setIsbn(String isb){
    	this.isbn = isb;
    }
    public void setTitle(String tit){
    	this.title = tit;
    }
    public void setAuthorName(String auname){
    	this.authorName = auname;
    }
    public void setPublisher(String pub){
    	this.publisher = pub;
    }
    public void setPrice(float p){
    	this.price = p;
    }
    public void setPyear(String y){
    	this.pyear = y;
    }
    public void setPmonth(String m){
    	this.pmonth = m;
    }
    public void setPday(String d){
    	this.pday = d;
    }
    
    
    public String getIsbn(){
    	return this.isbn;
    }
    public String getTitle(){
    	return this.title;
    }
    public String getAuthorName(){
    	return this.authorName;
    }
    public String getPublisher(){
    	return this.publisher;
    }
    public float getPrice(){
    	return this.price;
    }
    public String getPyear(){
    	return this.pyear;
    }
    public String getPmonth(){
    	return this.pmonth;
    }
    public String getPday(){
    	return this.pday;
    }
    
    public String execute() throws Exception{
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    		Connection conn = DriverManager.getConnection(url,"root","adminmushroom");
    		Statement stmt = conn.createStatement();
    		String sql = "select * from Author where AuthorID = " +this.getAuthorName();
    		ResultSet rs = stmt.executeQuery(sql);
    		if(rs.next()){
    			int id = rs.getInt("AuthorID");
    			String date =  this.getPyear()+"-"+this.getPmonth()+"-"+this.getPday();
    			String sqlAdd = "insert into Book(ISBN,Title,AuthorID,Publisher,PublisherDate,Price) values(?,?,?,?,?,?)";
    			PreparedStatement ps = conn.prepareStatement(sqlAdd);
    			ps.setString(1, this.getIsbn());
    			ps.setString(2, this.getTitle());
    			ps.setInt(3, id);
    			ps.setString(4, this.getPublisher());
    			ps.setString(5, date);
    			ps.setFloat(6,this.getPrice());
    			int row = ps.executeUpdate();
    			ps.close();
    			rs.close();
        		stmt.close();
        		conn.close();
    			if(row>0)return SUCCESS;
    			else return NONE;
    		}
    		else{//先增添作者
    			rs.close();
        		stmt.close();
        		conn.close();
    			return "noThisAuthor";
    		}
    		
    		
    	}catch(ClassNotFoundException e){
			e.printStackTrace();
			return "error";
		}catch(SQLException e){
			e.printStackTrace();
			return "error";
		}
    }
    
}
