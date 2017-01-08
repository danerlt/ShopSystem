package com.shop.domain;

import java.math.BigDecimal;

public class ShopCart {
	private int id;
	private int cId;
	private int pId;
	private int count;
	private String isBuy;
	private BigDecimal totolPrice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
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
	public BigDecimal getTotolPrice() {
		return totolPrice;
	}
	public void setTotolPrice(BigDecimal totolPrice) {
		this.totolPrice = totolPrice;
	}

}