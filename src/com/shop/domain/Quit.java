package com.shop.domain;

import java.util.Date;

public class Quit {
	private String quitID;
	private String customerID;
	private long orderID;
	private Date deliveryDate;
	private String quitReason;
	private String productID;
	private int qty;
	private String customerName;
	public String getQuitID() {
		return quitID;
	}
	public void setQuitID(String quitID) {
		this.quitID = quitID;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public long getOrderID() {
		return orderID;
	}
	public void setOrderID(long orderID) {
		this.orderID = orderID;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public String getQuitReason() {
		return quitReason;
	}
	public void setQuitReason(String quitReason) {
		this.quitReason = quitReason;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
}
