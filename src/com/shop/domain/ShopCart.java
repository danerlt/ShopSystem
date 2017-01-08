package com.shop.domain;

public class ShopCart {
	private String id;
	private String cId;
	private String pId;
	private int count;
	private String isBuy;
	private double totolPrice;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getIsBuy() {
		return isBuy;
	}
	public void setIsBuy(String isBuy) {
		this.isBuy = isBuy;
	}
	public double getTotolPrice() {
		return totolPrice;
	}
	public void setTotolPrice(double totolPrice) {
		this.totolPrice = totolPrice;
	}

}