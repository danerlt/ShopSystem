package com.shop.domain;

import java.util.Date;

public class Product {
	private String prodID;
	private String name;
	private String kindID;
	private String supID;
	private int storage;
	private Date prodDate;
	private Date keepDate;
	private double unitPrice;
	private int supCount;

	public String getProdID() {
		return prodID;
	}
	public void setProdID(String prodID) {
		this.prodID = prodID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKindID() {
		return kindID;
	}
	public void setKindId(String kindID) {
		this.kindID = kindID;
	}
	public String getSupID() {
		return supID;
	}
	public void setSupID(String supID) {
		this.supID = supID;
	}
	public int getStorage() {
		return storage;
	}
	public void setStorage(int storage) {
		this.storage = storage;
	}
	public Date getProdDate() {
		return prodDate;
	}
	public void setProdDate(Date prodDate) {
		this.prodDate = prodDate;
	}
	public Date getKeepDate() {
		return keepDate;
	}
	public void setKeepDate(Date keepDate) {
		this.keepDate = keepDate;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public int getSupCount() {
		return supCount;
	}
	public void setSupCount(int supCount) {
		this.supCount = supCount;
	}
	
	
}
