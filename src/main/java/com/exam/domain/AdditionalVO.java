package com.exam.domain;

import lombok.Data;

@Data
public class AdditionalVO {
	private int unum;
	private String mobile;						// 휴대폰번호
	private String hobby;						// 취미
	private String intro;						// 한줄소개
	private String mpic;						// 선택된 메인이미지의 파일이름+확장자
}
