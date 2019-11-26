package com.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.domain.MemImgVO;
import com.exam.domain.MemberVO;
import com.exam.mapper.MemImgMapper;
import com.exam.mapper.MemberMapper;

@Service
@Transactional
public class MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	@Autowired
	private MemImgMapper memImgMapper;
	
	// 회원정보 삽입
	public void insertMember(MemberVO memberVO, MemImgVO memImgVO) {
		memberMapper.insertMember(memberVO);
		memImgMapper.insertImage(memImgVO);
	}
	
	// 회원정보 수정
	public void updateMember(MemberVO memberVO) {
		memberMapper.updateMember(memberVO);
	}
	
	// 성공 : 1, 실패 : 0, 아이디없음 : -1
	public int userCheck(String email, String passwd) {
		int check = -1;
		MemberVO memberVO = memberMapper.getMemberByEmail(email);
		
		if (memberVO != null) { 			// 튜플 존재시
			if (passwd.equals(memberVO.getPasswd())) { // 패스워드 일치
				check = 1;
			} else { 						// 패스워드 불일치
				check = 0;
			}
		}
		return check;
	}
	
	// 아이디 중복시 true 리턴
	public boolean isIdDuplicated(String email) {
		boolean isIdDup = false;
		if (0 < memberMapper.countMemberByEmail(email)) {
			isIdDup = true;
		}
		return isIdDup;
	}
}
