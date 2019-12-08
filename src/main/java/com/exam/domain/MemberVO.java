package com.exam.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	
	private String email; 						// ID겸 이메일 (수정불가)
	private int unum;							// 회원 번호
	private String passwd;						// 비밀번호
	private String username;					// 닉네임
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regDate;						// 가입날짜 (수정불가)
	private int age;							// 나이(주민등록번호로 연산)
	private String residentId;					// 주민등록번호 (수정불가)
	private String gender;						// 성별(주민등록번호로 연산)
	private String local;						// 지역
	private String mobile;						// 휴대폰번호
	private String hobby1;						// 취미1
	private String hobby2;						// 취미2
	private String hobby3;						// 취미3
	private int recommended;					// 추천수 (수정불가)
	private String intro;						// 한줄소개
	private String mpic;						// 선택된 메인이미지의 파일이름+확장자
}
