package com.wwm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wwm.domain.FreeBoardVO;


public interface BoardMapper {

		public int getBoardCount(String search);
		
		public List<FreeBoardVO> getBoards(@Param("startRow")int startRow, @Param("pageSize")int pageSize, @Param("search")String search);
		
		public int nextBoardNum();
		
		public int insertBoard(FreeBoardVO boardVO);
		
		public void updateReadcount(int num);
		
		public FreeBoardVO getBoard(int num);

}
