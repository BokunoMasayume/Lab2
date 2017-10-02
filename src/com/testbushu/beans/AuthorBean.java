package com.testbushu.beans;

public class AuthorBean {
	private String name;
	private String country;
	private byte age;
	private int id;
	
	public void setName(String n){
		this.name=n;
	}
	public void setCountry(String c){
		this.country = c;
	}
	public void setAge(byte a){
		this.age = a;
	}
	public void setId(int i){
		this.id = i;
	}
	public int getId(){
		return this.id;
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
}
