package com.exam.mapper;

import org.apache.ibatis.annotations.Delete;

import com.exam.domain.AttachVO;

public interface AttachMapper {
	
	// 이미지정보 1개 삽입
	public void insertImage(AttachVO attachVO);
	
	// 입력된 uuid에 해당하는 튜플 삭제 (선택 삭제용)
	@Delete("DELETE FROM attachs WHERE uuid = #{uuid}")
	public void deleteImageByUuid(String uuid);
	
	// 입력된 회원번호에 해당하는 튜플들 삭제 (회원 탈퇴용)
	@Delete("DELETE FROM attachs WHERE unum = #{unum}")
	public void deleteImageByUnum(int unum);
}
