package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.AttachVO;

public interface AttachMapper {
	public void insertAttach(AttachVO attachVO);
	
	// 해당 회원의 프로필이미지들(이미지 뿐만 아니라 모든 정보를 가져온다)
	@Select("SELECT * FROM attachs WHERE unum = #{unum} ORDER BY attach_date DESC")
	public List<AttachVO> getAttaches(int unum);
	
	//attachVO 는 오브젝트 로 인식
	
	//해당 회원의 프로필 이미지들 팝업(unum에 해당하는 name 파일만 들고온다)
	@Select("SELECT name FROM attachs WHERE unum = #{unum} ORDER BY attach_date DESC")
	public List<String> getAttachpic(int unum);
	
	//String으로 받아야함
	
	// 해당 회원의 모든 이미지 삭제하는 메소드
	@Delete("DELETE FROM attachs WHERE unum = #{unum}")
	public void deleteAttachByUnum(int unum);
		
	// uuid에 해당하는 이미지 한개 삭제하는 메소드
	@Delete("DELETE FROM attachs WHERE uuid = #{uuid}")
	public void deleteAttachByUuid(String uuid);
}