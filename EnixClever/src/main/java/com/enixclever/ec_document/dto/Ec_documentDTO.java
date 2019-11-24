package com.enixclever.ec_document.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Ec_documentDTO {
	
	private int DOC_ID;
	private String DOC_NAME, DOC_SUMMARY, DOC_AUTHOR_ID, DOC_AUTHOR_NAME, DOC_IS_OPEN, DOC_ATTACH_FILES;
	@DateTimeFormat(pattern = "yyyy-MM-dd:HH:mm:ss")
	private Date DOC_CREATION_DATE, DOC_MODIFY_DATE;
	private int DOC_HIT;
	public int getDOC_ID() {
		return DOC_ID;
	}
	public void setDOC_ID(int dOC_ID) {
		DOC_ID = dOC_ID;
	}
	public String getDOC_NAME() {
		return DOC_NAME;
	}
	public void setDOC_NAME(String dOC_NAME) {
		DOC_NAME = dOC_NAME;
	}
	public String getDOC_SUMMARY() {
		return DOC_SUMMARY;
	}
	public void setDOC_SUMMARY(String dOC_SUMMARY) {
		DOC_SUMMARY = dOC_SUMMARY;
	}
	public String getDOC_AUTHOR_ID() {
		return DOC_AUTHOR_ID;
	}
	public void setDOC_AUTHOR_ID(String dOC_AUTHOR_ID) {
		DOC_AUTHOR_ID = dOC_AUTHOR_ID;
	}
	public String getDOC_AUTHOR_NAME() {
		return DOC_AUTHOR_NAME;
	}
	public void setDOC_AUTHOR_NAME(String dOC_AUTHOR_NAME) {
		DOC_AUTHOR_NAME = dOC_AUTHOR_NAME;
	}
	public String getDOC_IS_OPEN() {
		return DOC_IS_OPEN;
	}
	public void setDOC_IS_OPEN(String dOC_IS_OPEN) {
		DOC_IS_OPEN = dOC_IS_OPEN;
	}
	public String getDOC_ATTACH_FILES() {
		return DOC_ATTACH_FILES;
	}
	public void setDOC_ATTACH_FILES(String dOC_ATTACH_FILES) {
		DOC_ATTACH_FILES = dOC_ATTACH_FILES;
	}
	public Date getDOC_CREATION_DATE() {
		return DOC_CREATION_DATE;
	}
	public void setDOC_CREATION_DATE(Date dOC_CREATION_DATE) {
		DOC_CREATION_DATE = dOC_CREATION_DATE;
	}
	public Date getDOC_MODIFY_DATE() {
		return DOC_MODIFY_DATE;
	}
	public void setDOC_MODIFY_DATE(Date dOC_MODIFY_DATE) {
		DOC_MODIFY_DATE = dOC_MODIFY_DATE;
	}
	public int getDOC_HIT() {
		return DOC_HIT;
	}
	public void setDOC_HIT(int dOC_HIT) {
		DOC_HIT = dOC_HIT;
	}
	@Override
	public String toString() {
		return "Ec_documentDTO [DOC_ID=" + DOC_ID + ", DOC_NAME=" + DOC_NAME + ", DOC_SUMMARY=" + DOC_SUMMARY
				+ ", DOC_AUTHOR_ID=" + DOC_AUTHOR_ID + ", DOC_AUTHOR_NAME=" + DOC_AUTHOR_NAME + ", DOC_IS_OPEN="
				+ DOC_IS_OPEN + ", DOC_ATTACH_FILES=" + DOC_ATTACH_FILES + ", DOC_CREATION_DATE=" + DOC_CREATION_DATE
				+ ", DOC_MODIFY_DATE=" + DOC_MODIFY_DATE + ", DOC_HIT=" + DOC_HIT + "]";
	}
	
	
}
