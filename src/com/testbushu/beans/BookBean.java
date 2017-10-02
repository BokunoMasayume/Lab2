package com.testbushu.beans;

import com.testbushu.beans.AuthorBean;

public class BookBean {
    private String isbn;
    private String title;
    private int authorID;
    private String publisher;
    private float price;
    private String publishDate;//yyyy-mm-dd
    private AuthorBean author;//this book's author's all message
    
    public void setAuthor(AuthorBean aaa){
    	this.author = new AuthorBean();
    	this.author.setAge(aaa.getAge());
    	this.author.setCountry(aaa.getCountry());
    	this.author.setId(aaa.getId());
    	this.author.setName(aaa.getName());
    }
    public void setIsbn(String isb){
    	this.isbn = isb;
    }
    public void setTitle(String tit){
    	this.title = tit;
    }
    public void setAuthorID(int auname){
    	this.authorID = auname;
    }
    public void setPublisher(String pub){
    	this.publisher = pub;
    }
    public void setPublishDate(String data){
    	this.publishDate = data;
    }
    public void setPrice(float p){
    	this.price = p;
    }
    
    public AuthorBean getAuthor(){
    	return this.author;
    }
    public String getIsbn(){
    	return this.isbn;
    }
    public String getTitle(){
    	return this.title;
    }
    public int getAuthorID(){
    	return this.authorID;
    }
    public String getPublisher(){
    	return this.publisher;
    }
    public String getPublishDate(){
    	return this.publishDate;
    }
    public float getPrice(){
    	return this.price;
    }
}
