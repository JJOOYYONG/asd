package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.AttachVO;

public interface AttachMapper {
	public void insertAttach(AttachVO attachVO);
	
	// 해당 회원의 프로필이미지들
	@Select("SELECT * FROM attach WHERE unum = #{unum} ORDER BY attach_data DESC")
	public List<AttachVO> getAttaches(int unum);
	
	// 해당 회원의 모든 이미지 삭제하는 메소드
	@Delete("DELETE FROM attach WHERE unum = #{unum}")
	public void deleteAttachByUnum(int unum);
		
	// uuid에 해당하는 이미지 한개 삭제하는 메소드
	@Delete("DELETE FROM attach WHERE uuid = #{uuid}")
	public void deleteAttachByUuid(String uuid);
}