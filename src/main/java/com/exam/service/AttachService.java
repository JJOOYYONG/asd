package com.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.domain.AttachVO;
import com.exam.mapper.AttachMapper;

@Service
@Transactional
public class AttachService {
	
	@Autowired
	private AttachMapper attachMapper;
	
	public void insertAttach(AttachVO attachVO) {
		attachMapper.insertAttach(attachVO);
	}
	
	public List<AttachVO> getAttaches(int bno){
		return attachMapper.getAttaches(bno);
	}
	
	public void insertAttaches(List<AttachVO> attachList) {
		for(AttachVO attachVO : attachList) {
			attachMapper.insertAttach(attachVO);
		}
	}
	
	public void deleteAttachByUnum(int unum) {
		attachMapper.deleteAttachByUnum(unum);
	}
	
	public void deleteAttachByUuid(String uuid) {
		attachMapper.deleteAttachByUuid(uuid);
	}
	
	
}
