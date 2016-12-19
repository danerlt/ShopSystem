package com.shop.domain;

public class ShopCart {
	private String shopCartID;
	private String customerID;
	private String productID;
	private double unitPrice;
	private int qty;
	private String buy;
	private double proTaoAmt;
	
	public String getShopCartID() {
		return shopCartID;
	}
	public void setShopCartID(String shopCartID) {
		this.shopCartID = shopCartID;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getBuy() {
		return buy;
	}
	public void setBuy(String buy) {
		this.buy = buy;
	}
	public double getProTaoAmt() {
		return proTaoAmt;
	}
	public void setProTaoAmt(double proTaoAmt) {
		this.proTaoAmt = proTaoAmt;
	}

}
