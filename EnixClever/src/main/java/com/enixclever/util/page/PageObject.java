package com.enixclever.util.page;

import lombok.Data;

@Data

public class PageObject {

	private int page, perPageRow;
	private int startRow, endRow;
	
	private int totalRow; 
	private int totalPage;
	private int pageGroup; 
	private int startPage, endPage; 
	
	public PageObject() {
		page = 1;
		perPageRow = 10;
		startRow = 1;
		endRow = 10;
		pageGroup = 10;
	}
	
	public void calcuDBData() {
		startRow = (page-1)*perPageRow + 1;
		endRow = startRow + perPageRow - 1;
	}
	
	public void calcuDisplayData() {
		totalPage = (totalRow - 1) / perPageRow + 1;
		startPage = (page - 1) / pageGroup * pageGroup + 1;
		endPage = startPage + pageGroup - 1;
		if(endPage>totalPage) endPage = totalPage;
	}
}
