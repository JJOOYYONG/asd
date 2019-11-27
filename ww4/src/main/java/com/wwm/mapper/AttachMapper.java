package com.wwm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.wwm.domain.AttachVO;

public interface AttachMapper {
	public void insertAttach(AttachVO attachVO);
	
	@Select("SELECT * FROM attach WHERE bno = #{bno}")
	public List<AttachVO> getAttaches(int bno);
	
	// 게시판 글번호에 해당하는 첨부파일정보 삭제하는 메소드
	@Delete("DELETE FROM attach WHERE bno = #{bno}")
	public void deleteAttachByBno(int bno);
	
		
	// uuid에 해당하는 첨부파일정보 한개 삭제하는 메소드
	@Delete("DELETE FROM attach WHERE uuid = #{uuid}")
	public void deleteAttachByUuid(String uuid);
}
