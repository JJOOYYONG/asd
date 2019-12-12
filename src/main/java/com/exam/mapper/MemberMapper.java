package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.MemberVO;

public interface MemberMapper {
	
	// 1명 회원정보 삽입 (INSERT)
	public int insertMember(MemberVO memberVO);
	
	// 1명 회원정보 수정 (UPDATE)
	public void updateMember(MemberVO memberVO);
	
	// 입력된 이메일에 해당하는 회원정보 리턴
	@Select("SELECT * FROM members WHERE email=#{email}")
	public MemberVO getMemberByEmail(String email);
	
	@Select("SELECT * FROM members WHERE unum=#{unum}")
	public MemberVO getMemberByUnum(int unum);
	
	// 가입날짜순으로 모든 회원 내림차순 목록 리턴
	@Select("SELECT * FROM members ORDER BY reg_date DESC")
	public List<MemberVO> getMemberAll();
	
	// 해당 계정 존재여부 정수 리턴(존재하면 1, 아니면 0 리턴)
	@Select("SELECT COUNT(*) FROM members WHERE email=#{email}")
	public int countMemberByEmail(String email);
	
	// 전체 회원수 조회
	@Select("Select count(*) FROM members")
	public int countMemberAll();
	
	// 10001번 이상 회원수 조회
	@Select("Select count(*) FROM members WHERE unum>10000")
	public int countMemberByClient();
	
	// 입력된 이메일에 해당하는 회원 삭제
	@Delete("DELETE FROM members WHERE email = #{email}")
	public void deleteMemberByEmail(String email);
}
