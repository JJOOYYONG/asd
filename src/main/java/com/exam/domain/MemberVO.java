package com.exam.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	
	private String email; 						// ID겸 이메일
	private int unum;							// 회원 번호
	private String passwd;						// 비밀번호
	private String username;					// 닉네임
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regDate;						// 가입날짜
	private int age;							// 나이(주민등록번호로 연산)
	private int residentId;						// 주민등록번호
	private String gender;						// 성별
	private String local;						// 지역
	private String mobile;						// 휴대폰번호
	private String hobby1;						// 취미1
	private String hobby2;						// 취미2
	private String hobby3;						// 취미3
	private String intro;						// 한줄소개
	private String story;						// TMI소개
	private String mainUuid;					// 메인이미지 선택 정보
}
