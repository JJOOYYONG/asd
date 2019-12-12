package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.AdditionalVO;
import com.exam.domain.MemberVO;

public interface AdditionalMapper {
	
	// 회원 추가정보 삽입
	public void insertAddition(AdditionalVO additionalVO);
	
	// 회원 추가정보 수정
	public void updateAddition(AdditionalVO additionalVO);
	
	@Select("SELECT * FROM additional WHERE unum=#{unum}")
	public AdditionalVO getAddition(int unum);
	
	@Delete("DELETE FROM addtional WHERE unum=#{unum}")
	public void deleteAddition(int unum);
}
