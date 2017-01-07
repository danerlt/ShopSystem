package com.shop.domain;

import java.math.BigDecimal;

public class Product {
    private int id;
    private String pName;
    private String pDesc;
    private int pNum;
    private java.util.Date pubTime;
    private int pKeepTime;
    private String pImage;
    private String kId;
    private BigDecimal iPrice;
    private BigDecimal mPrice;
    private String isHot;
    private String isShow;
	@Override
	public String toString() {
		return "Product [id=" + id + ", pName=" + pName + ", pDesc=" + pDesc + ", pubTime=" + pubTime + ", pKeepTime="
				+ pKeepTime + ", pImage=" + pImage + ", kId=" + kId + ", iPrice=" + iPrice + ", mPrice=" + mPrice
				+ ", isHot=" + isHot + ", isShow=" + isShow + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpDesc() {
		return pDesc;
	}
	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}
	public java.util.Date getPubTime() {
		return pubTime;
	}
	public void setPubTime(java.util.Date pubTime) {
		this.pubTime = pubTime;
	}
	public int getpKeepTime() {
		return pKeepTime;
	}
	public void setpKeepTime(int pKeepTime) {
		this.pKeepTime = pKeepTime;
	}
	public String getpImage() {
		return pImage;
	}
	public void setpImage(String pImage) {
		this.pImage = pImage;
	}
	public String getkId() {
		return kId;
	}
	public void setkId(String kId) {
		this.kId = kId;
	}
	public BigDecimal getiPrice() {
		return iPrice;
	}
	public void setiPrice(BigDecimal iPrice) {
		this.iPrice = iPrice;
	}
	public BigDecimal getmPrice() {
		return mPrice;
	}
	public void setmPrice(BigDecimal mPrice) {
		this.mPrice = mPrice;
	}
	public String getIsHot() {
		return isHot;
	}
	public void setIsHot(String isHot) {
		this.isHot = isHot;
	}
	public String getIsShow() {
		return isShow;
	}
	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
}
