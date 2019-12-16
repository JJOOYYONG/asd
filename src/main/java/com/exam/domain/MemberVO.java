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
	private String local;						// 지역
	private String residentIdF;					// 주민등록번호 (수정불가)
	private String residentIdB;					// 주민등록번호 (수정불가)
	private int age;							// 나이(주민등록번호로 연산)
	private String gender;						// 성별(주민등록번호로 연산)
	private int recommended;					// 추천수 (수정불가)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regDate;						// 가입날짜 (수정불가)
}
