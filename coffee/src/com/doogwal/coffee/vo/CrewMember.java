package com.doogwal.coffee.vo;

import java.sql.Timestamp;

public class CrewMember {
	
	private int no,crewNo,userNo,reportNum;
	private char role,type;
	private String profileImg,introduction;
	private Timestamp regdate;
	
	public CrewMember() {
		// TODO Auto-generated constructor stub
	}

	public CrewMember(int no, int crewNo, int userNo, int reportNum, char role, char type, String profileImg,
			String introduction) {
		this.no = no;
		this.crewNo = crewNo;
		this.userNo = userNo;
		this.reportNum = reportNum;
		this.role = role;
		this.type = type;
		this.profileImg = profileImg;
		this.introduction = introduction;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCrewNo() {
		return crewNo;
	}

	public void setCrewNo(int crewNo) {
		this.crewNo = crewNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getReportNum() {
		return reportNum;
	}

	public void setReportNum(int reportNum) {
		this.reportNum = reportNum;
	}

	public char getRole() {
		return role;
	}

	public void setRole(char role) {
		this.role = role;
	}

	public char getType() {
		return type;
	}

	public void setType(char type) {
		this.type = type;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	

	
}
