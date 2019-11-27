package com.wwm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wwm.domain.FreeBoardVO;
import com.wwm.mapper.AttachMapper;
import com.wwm.mapper.BoardMapper;

@Service
@Transactional
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	public int getBoardCount(String search) {
		return boardMapper.getBoardCount(search);
	}
	
	public List<FreeBoardVO> getBoards(int startRow, int pageSize, String search){
		List<FreeBoardVO> list = boardMapper.getBoards(startRow, pageSize, search);
		return list;
	}
	
	public void insertBoard(FreeBoardVO boardVO) {
		boardMapper.insertBoard(boardVO);
	}
	
	public int nextBoardNum() {
		int num = boardMapper.nextBoardNum();
		return num;
	}
	
	
}
