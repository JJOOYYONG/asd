package com.exam.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.domain.AdditionalVO;
import com.exam.domain.AttachVO;
import com.exam.domain.LatLngVO;
import com.exam.domain.MemberVO;
import com.exam.mapper.AdditionalMapper;
import com.exam.mapper.AttachMapper;
import com.exam.mapper.LatLngMapper;
import com.exam.mapper.MemberMapper;

@Service
@Transactional
public class MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	@Autowired
	private AdditionalMapper additionalMapper;
	@Autowired
	private LatLngMapper latLngMapper; 
	
	// 회원정보 삽입
	public int insertMember(MemberVO memberVO) {
		return memberMapper.insertMember(memberVO);
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
	
	public int countMemberAll() {
		return memberMapper.countMemberAll();
	}
	
	public int countMemberByClient() {
		return memberMapper.countMemberByClient();
	}
	
	public MemberVO getMemberByEmail(String email) {
		return memberMapper.getMemberByEmail(email);
	}
	
	public MemberVO getMemberByUnum(int unum) {
		return memberMapper.getMemberByUnum(unum);
	}
	
	public List<MemberVO> getMemberList() {
		return memberMapper.getMemberAll();
	}

	public void deleteMember(String email) {
		MemberVO memberVO = memberMapper.getMemberByEmail(email);
		additionalMapper.deleteAddition(memberVO.getUnum());
		memberMapper.deleteMemberByEmail(email);
	}
	
	public List<Map<String, Object>> getMemberAddtionList() {
		List<Map<String, Object>> mapList = new ArrayList<>();
		List<MemberVO> memberList = memberMapper.getMemberAll();
		for (MemberVO m : memberList) {
			Map<String, Object> map = new HashMap<>();
			AdditionalVO a = additionalMapper.getAddition(m.getUnum());
			map.put("member", m);
			map.put("addition", a);
			mapList.add(map);
		}
		return mapList;
	}
	
	public boolean isAdded(int unum) {
		return 1 == additionalMapper.countAdditionByUnum(unum);
	}
	
	public AdditionalVO getAddtionByUnum(int unum) {
		return additionalMapper.getAddition(unum);
	}
	
	public int insertAddition(AdditionalVO additionalVO) {
		return additionalMapper.insertAddition(additionalVO);
	}
	
	public int updateAddition(AdditionalVO additionalVO) {
		return additionalMapper.updateAddition(additionalVO);
	}
	
	public void deleteAddition(int unum) {
		additionalMapper.deleteAddition(unum);
	}

	public boolean isAdditionExist(int unum) {
		return additionalMapper.countAdditionByUnum(unum)!=0;
	}
	
	public int insertLatLng(LatLngVO latLngVO) {
		return latLngMapper.insertLatLng(latLngVO);
	}
	
	public int updateLatLng(LatLngVO latLngVO) {
		return latLngMapper.updateLatLng(latLngVO);
	}
	
	public int removeLatLng() {
		return latLngMapper.removeLatLng();
	}
	
	public boolean isLatLngExist(int unum) {
		return 1 == latLngMapper.countLatLngByUnum(unum);
	}
	
	public List<LatLngVO> getLatLngAll() {
		return latLngMapper.getLatLngAll();
	}
	
}
