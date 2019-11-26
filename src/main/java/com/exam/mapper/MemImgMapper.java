package com.exam.mapper;

import org.apache.ibatis.annotations.Delete;

import com.exam.domain.MemImgVO;

public interface MemImgMapper {
	
	// 이미지정보 1개 삽입
	public void insertImage(MemImgVO memImgVO);
	
	// 입력된 uuid에 해당하는 튜플 삭제 (선택 삭제용)
	@Delete("DELETE FROM mem_img WHERE uuid = #{uuid}")
	public void deleteImageByUuid(String uuid);
	
	// 입력된 email에 해당하는 튜플들 삭제 (회원 탈퇴용)
	@Delete("DELETE FROM mem_img WHERE email = #{email}")
	public void deleteImageByEmail(String email);
}
