package com.exam.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	
	private String email;
	private String passwd;
	private String username;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regDate;
	private int age;
	private int residentId;
	private String gender;
	private String local;
	private String mobile;
	private String hobby1;
	private String hobby2;
	private String hobby3;
	private String intro;
}
