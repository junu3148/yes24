package com.yes24.vo;

import org.springframework.stereotype.Component;

@Component
public class Criteria {
	private int pageNum, amount;	//현재 페이지, 페이지 당 보여질 게시물 갯수
	private int showStat;
	//private String keyword, type;	//검색 키워드, 검색 타입
	//private String[] typeArr;		//검색 타입 배열
	
	//기본 생성자 -> 기본세팅 : pageNum=1, amount=10
	public Criteria() {
		this(1, 10);
	}
	//생성자 -> 원하는 pageNum, 원하는 amount
	public Criteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public int getShowStat() {
		return showStat;
	}
	public void setShowStat(int showStat) {
		this.showStat = showStat;
	}
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", showStat=" + showStat + "]";
	}
}
