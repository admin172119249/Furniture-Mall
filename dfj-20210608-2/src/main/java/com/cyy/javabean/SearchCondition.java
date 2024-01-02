package com.cyy.javabean;

public class SearchCondition {
	private String condition;
	private int pageNow;
	private int beginRow;
	private int pageSize;
	private int pageCnt = 1;

	
	public SearchCondition(String condition, int pageNow, int pageSize) {
		super();
		this.condition = condition;
		this.pageNow = pageNow;
		this.pageSize = pageSize;
	}

	// 省略 getter, setter, toString
	/**
	 * @return the condition
	 */
	public String getCondition() {
		return condition;
	}

	/**
	 * @param condition
	 *            the condition to set
	 */
	public void setCondition(String condition) {
		this.condition = condition;
	}

	/**
	 * @return the pageNow
	 */
	public int getPageNow() {
		return pageNow;
	}

	/**
	 * @param pageNow
	 *            the pageNow to set
	 */
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	/**
	 * @return the beginRow
	 */
	public int getBeginRow() {
		return beginRow;
	}

	/**
	 * @param beginRow
	 *            the beginRow to set
	 */
	public void setBeginRow(int beginRow) {
		this.beginRow = beginRow;
	}

	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize
	 *            the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return the pageCnt
	 */
	public int getPageCnt() {
		return pageCnt;
	}

	/**
	 * @param pageCnt
	 *            the pageCnt to set
	 */
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "SearchCondition [condition=" + condition + ", pageNow="
				+ pageNow + ", beginRow=" + beginRow + ", pageSize=" + pageSize
				+ ", pageCnt=" + pageCnt + "]";
	}

}