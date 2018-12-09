package com.lakshmi.jsp;

public class Student {

	private String firstName;
	private String lastName;
	private boolean goldCustomer;
	private boolean silverCustomer;
	
	public Student(String firstName, String lastName, boolean goldCustomer, boolean silverCustomer) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.goldCustomer = goldCustomer;
		this.silverCustomer = silverCustomer;
	}

	public boolean isSilverCustomer() {
		return silverCustomer;
	}

	public void setSilverCustomer(boolean silverCustomer) {
		this.silverCustomer = silverCustomer;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public boolean isGoldCustomer() {
		return goldCustomer;
	}

	public void setGoldCustomer(boolean goldCustomer) {
		this.goldCustomer = goldCustomer;
	}
	
	
	
}
