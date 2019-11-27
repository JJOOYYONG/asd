package com.wwm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wwm.domain.AttachVO;
import com.wwm.mapper.AttachMapper;

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
	
	public void deleteAttachByBno(int bno) {
		attachMapper.deleteAttachByBno(bno);
	}
	
	public void deleteAttachByUuid(String uuid) {
		attachMapper.deleteAttachByUuid(uuid);
	}
	
	
}
