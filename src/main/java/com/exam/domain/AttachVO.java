package com.exam.domain;

import lombok.Data;

@Data
public class AttachVO {
	private String uuid;		// 이미지 고유ID
	private String filetype;	// 파일 이미지여부
	private String path;		// 이미지 경로
	private String name;		// 파일명+확장자
	private int unum;			// 이미지 주인의 회원번호
}
