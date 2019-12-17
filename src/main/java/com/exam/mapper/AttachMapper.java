package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.AttachVO;

public interface AttachMapper {
	public void insertAttach(AttachVO attachVO);
	

	// 해당 회원의 모든 정보 들고옴
	@Select("SELECT * FROM attachs WHERE unum = #{unum} ORDER BY attach_date DESC")
	public List<AttachVO> getAttaches(int unum);
	
	//해당 회원들의 이미지들만 들고옴(최신사진기준)
	@Select("SELECT name FROM attachs where unum= #{unum} ORDER BY attach_date DESC" )
	public List<String> getAttachpic(int unum);
	
	// 해당 회원의 모든 이미지 삭제하는 메소드
	@Delete("DELETE FROM attachs WHERE unum = #{unum}")
	public void deleteAttachByUnum(int unum);
		
	// uuid에 해당하는 이미지 한개 삭제하는 메소드
	@Delete("DELETE FROM attachs WHERE uuid = #{uuid}")
	public void deleteAttachByUuid(String uuid);
}