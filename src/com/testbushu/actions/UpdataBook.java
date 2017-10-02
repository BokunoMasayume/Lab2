package com.testbushu.actions;

import java.sql.*; 
import com.testbushu.beans.BookBean;

public class UpdataBook {
    private String name;//Author's name
    private BookBean bookMsg;
    
    public void setName(String n){
    	this.name = n;
    }
    public String getName(){
    	return this.name;
    }
    public void setBookMsg(BookBean b){
    	this.bookMsg = b;
    }
    public BookBean getBookMsg(){
    	return this.bookMsg;
    }
    
    
    public String execute() throws Exception{
    	try{
    		//System.out.println(this.getBookMsg().getTitle());
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/lab_2_lib?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    	Connection conn = DriverManager.getConnection(url,"mushroom","adminmushroom");
    	Statement stmt = conn.createStatement();
    	String sql = "select AuthorID from Author where Name=\""+this.getName()+"\"";
    	ResultSet rs = stmt.executeQuery(sql);
    	if(rs.next()){// have this author in lib 
    		int id = rs.getInt("AuthorID");
    		String sqlUpdt = "update Book set Title=? ,AuthorID=?,Publisher=?,Price=?,publisherDate=? where ISBN=?";
    		PreparedStatement  ps = conn.prepareStatement(sqlUpdt);
    		ps.setString(1, this.getBookMsg().getTitle());
    		ps.setInt(2, id);
    		ps.setString(3, this.getBookMsg().getPublisher());
    		ps.setFloat(4, this.getBookMsg().getPrice());
    		ps.setString(5, this.getBookMsg().getPublishDate());
    		ps.setString(6, this.getBookMsg().getIsbn());
    		ps.executeUpdate();
    		ps.close();
    		rs.close();
    		stmt.close();
    		conn.close();
    		return "success";
    	}
    	else{//no this author ,need add author first
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
