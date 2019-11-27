package com.wwm.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String passwd;
	private String name;
	private String email;
	private String hobby;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regdate;
	private String mpic;
	private int gold;
	private int age;
	private int residentid;
	private int num;
	private int point;
	private int pointcount;
	private String location;
	private String mobile;
	private String gender;
	private String story;
	private String comment;
	
	
}
