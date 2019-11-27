package com.wwm.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class FreeBoardVO {
	private int num;
	private int readcount;
	private String username;
	private String passwd;
	private String subject;
	private String content;
	private String email;
	private String filename;
	private String ip;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date regdate;
}
