package com.exam.domain;

import lombok.Data;

@Data
public class MemImgVO {
	private String uuid;		// 이미지 고유ID
	private String path;		// 이미지 경로
	private String name;		// 파일명+확장자
	private String email;		// 이미지 주인의 아이디
}
