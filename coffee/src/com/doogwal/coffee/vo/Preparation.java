package com.doogwal.coffee.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class Preparation {
	private int no, scheduleNo;
	private String prepation;
	private Timestamp regdate;
	
	public Preparation() {
	}
	public Preparation(int no, int scheduleNo, String prepation) {
		this.no = no;
		this.scheduleNo = scheduleNo;
		this.prepation = prepation;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getScheduleNo() {
		return scheduleNo;
	}
	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}
	public String getPrepation() {
		return prepation;
	}
	public void setPrepation(String prepation) {
		this.prepation = prepation;
	}
	
}
