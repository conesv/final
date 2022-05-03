package com.cbsbankui.model;

public class Order {

	private Long id;
	private String orderDetails;
	private String expectedDateOffFulfillment;
	private double amount;
	private Vendor vendor;
	private String status;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getOrderDetails() {
		return orderDetails;
	}
	
	public void setOrderDetails(String orderDetails) {
		this.orderDetails = orderDetails;
	}
	
	public String getExpectedDateOffFulfillment() {
		return expectedDateOffFulfillment;
	}
	
	public void setExpectedDateOffFulfillment(String expectedDateOffFulfillment) {
		this.expectedDateOffFulfillment = expectedDateOffFulfillment;
	}
	
	public double getAmount() {
		return amount;
	}
	
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	public Vendor getVendor() {
		return vendor;
	}
	
	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

}