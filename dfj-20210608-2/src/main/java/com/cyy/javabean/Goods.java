package com.cyy.javabean;

public class Goods {
	private int shopId;
	private String shopName;
	private Double shopPrice;
	private String shopPic;
	/**
	 * @return the shopId
	 */
	public int getShopId() {
		return shopId;
	}
	/**
	 * @param shopId the shopId to set
	 */
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	/**
	 * @return the shopName
	 */
	public String getShopName() {
		return shopName;
	}
	/**
	 * @param shopName the shopName to set
	 */
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	/**
	 * @return the shopPrice
	 */
	public Double getShopPrice() {
		return shopPrice;
	}
	/**
	 * @param shopPrice the shopPrice to set
	 */
	public void setShopPrice(Double shopPrice) {
		this.shopPrice = shopPrice;
	}
	/**
	 * @return the shopPic
	 */
	public String getShopPic() {
		return shopPic;
	}
	/**
	 * @param shopPic the shopPic to set
	 */
	public void setShopPic(String shopPic) {
		this.shopPic = shopPic;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Goods [shopId=" + shopId + ", shopName=" + shopName
				+ ", shopPrice=" + shopPrice + ", shopPic=" + shopPic + "]";
	}
	
	//省略 getter, setter, toString
	
	
	

}
