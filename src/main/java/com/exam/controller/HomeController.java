package com.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.domain.AttachVO;
import com.exam.domain.MemberVO;
import com.exam.service.AttachService;
import com.exam.service.MemberService;

@Controller
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AttachService attachService;
	
	@GetMapping("/")
	public String home(HttpSession session) { 
		List<MemberVO> memberList = new ArrayList<MemberVO>();
		
		while (memberList.size()<20) {
			int rand = (int)(Math.random()*memberService.countMemberByClient())+1;
			rand += 10000; // 10001~회원갯수 중 랜덤
			
//			if (memberList != null) {
//				for (MemberVO memberVO : memberList) {
//					System.out.println(memberVO.getUnum());
//					while (rand == memberVO.getUnum()) {
//						rand = (int)(Math.random()*memberService.countMemberByClient())+1;
//					}
//				}
//			}
			
			MemberVO vo = memberService.getMemberByUnum(rand);
			memberList.add(vo);
		}
		session.setAttribute("showMemberList", memberList);

		// 리다이렉트일 경우 HttpStatus.Found 지정해야 함
		return "main/main";
	}
	
	@GetMapping("/about")
	public String about() {return "etc/about";}
	
	@GetMapping("/contact")
	public String contact() {return "etc/contact";}
	
	@GetMapping("/pricing")
	public String pricing() {return "etc/pricing";}
	
	@GetMapping("/popup")
	@ResponseBody
	public List<Map<String,String>>popup(int unum){
		List<Map<String,String>> popupMapList = new ArrayList<Map<String,String>>();
		
		List<String> filenameList = attachService.getAttachpic(unum);
		
		System.out.println(filenameList);
		
		for(String filename : filenameList) {
			Map<String,String>popupMap = new HashMap<String,String>();
			popupMap.put("src", "/resources/upload/"+filename);
			
			popupMapList.add(popupMap);
		}
			System.out.println(popupMapList);
			
			return popupMapList;
		}
	
	
	
}
