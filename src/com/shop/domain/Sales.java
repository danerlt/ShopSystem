package com.shop.domain;

import java.math.BigDecimal;
import java.util.Date;

public class Sales {
    private long id;
    private int cId;
    private int pId;
    private int count;
    private BigDecimal totalPrice;
    private Date orderDate;
    private String invoiceNo;
    private String orderStatus;
    private Date delivDate;
	public long getId() {
		return id;
	}
	public void setId(long id) {
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
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Date getDelivDate() {
		return delivDate;
	}
	public void setDelivDate(Date delivDate) {
		this.delivDate = delivDate;
	}
	@Override
	public String toString() {
		return "Sales [id=" + id + ", cId=" + cId + ", pId=" + pId + ", count=" + count + ", totalPrice=" + totalPrice
				+ ", orderDate=" + orderDate + ", invoiceNo=" + invoiceNo + ", orderStatus=" + orderStatus
				+ ", delivDate=" + delivDate + "]";
	}
    
}
