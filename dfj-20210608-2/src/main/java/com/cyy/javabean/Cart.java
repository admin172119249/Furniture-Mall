package com.cyy.javabean;

import org.springframework.format.annotation.DateTimeFormat;

public class Cart {
	private Integer cartId;
	private Integer cartUserId;
	private Double cartPrice;
	private Integer cartShopId;
	private Integer cartNum;
	private String cartPic;
	private String cartName;
	/**
	 * @return the cartId
	 */
	public Integer getCartId() {
		return cartId;
	}
	/**
	 * @param cartId the cartId to set
	 */
	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}
	/**
	 * @return the cartUserId
	 */
	public Integer getCartUserId() {
		return cartUserId;
	}
	/**
	 * @param cartUserId the cartUserId to set
	 */
	public void setCartUserId(Integer cartUserId) {
		this.cartUserId = cartUserId;
	}
	/**
	 * @return the cartPrice
	 */
	public Double getCartPrice() {
		return cartPrice;
	}
	/**
	 * @param cartPrice the cartPrice to set
	 */
	public void setCartPrice(Double cartPrice) {
		this.cartPrice = cartPrice;
	}
	/**
	 * @return the cartShopId
	 */
	public Integer getCartShopId() {
		return cartShopId;
	}
	/**
	 * @param cartShopId the cartShopId to set
	 */
	public void setCartShopId(Integer cartShopId) {
		this.cartShopId = cartShopId;
	}
	/**
	 * @return the cartNum
	 */
	public Integer getCartNum() {
		return cartNum;
	}
	/**
	 * @param cartNum the cartNum to set
	 */
	public void setCartNum(Integer cartNum) {
		this.cartNum = cartNum;
	}
	/**
	 * @return the cartPic
	 */
	public String getCartPic() {
		return cartPic;
	}
	/**
	 * @param cartPic the cartPic to set
	 */
	public void setCartPic(String cartPic) {
		this.cartPic = cartPic;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	
	public String getCartName() {
		return cartName;
	}
	public void setCartName(String cartName) {
		this.cartName = cartName;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", cartUserId=" + cartUserId
				+ ", cartPrice=" + cartPrice + ", cartShopId=" + cartShopId
				+ ", cartNum=" + cartNum + ", cartPic=" + cartPic
				+ ", cartName=" + cartName + "]";
	}
	
	
	
	
}