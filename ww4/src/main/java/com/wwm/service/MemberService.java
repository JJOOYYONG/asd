package com.wwm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wwm.domain.MemberVO;
import com.wwm.mapper.MemberMapper;

@Service
@Transactional
public class MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	public int insertMember(MemberVO memberVO) {
		return memberMapper.insertMember(memberVO);
	}
	
	public int userCheck(String id, String passwd) {
		int check=-1;
		MemberVO memberVO = memberMapper.getMember(id);
		if(memberVO!=null) {
			if(passwd.equals(memberVO.getPasswd())){
				check=1;
			} else {
				check=0;
			}
		} else {
			check=-1;
		}
		return check;
	}
	
	public int userCheckByEmail(String email, String passwd) {
		int check=-1;
		MemberVO memberVO = memberMapper.getMemberByEmail(email);
		
		if(memberVO!=null) {
			if(passwd.equals(memberVO.getPasswd())){
				check=1;
			} else {
				check=0;
			}
		} else {
			check=-1;
		}
		return check;
	}
	
	public boolean isIdDuplicated(String id) {
		boolean isIdDuplicated =false;
		
		int count=memberMapper.countMember(id);
		if(count>0) {
			isIdDuplicated=true;
		}
		return isIdDuplicated;
	}
	
	public MemberVO getMemberById(String id) {
		MemberVO memberVO = memberMapper.getMember(id);
		return memberVO;
	}
	
	public MemberVO getMemberByEmail(String email) {
		MemberVO memberVO = memberMapper.getMemberByEmail(email);
		return memberVO;
	}
	
	public MemberVO getMemberByNum(int num) {
		MemberVO memberVO = memberMapper.getMemberByNum(num);
		return memberVO;
	}
	
	public void updateMember(MemberVO memberVO) {
		memberMapper.updateMember(memberVO);
	}
	
	public int countMemberAll() {
		int count=memberMapper.countMemberAll();
		return count;
	}
	
}
