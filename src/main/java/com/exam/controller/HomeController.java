package com.exam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.exam.domain.AdditionalVO;
import com.exam.domain.MemberVO;
import com.exam.service.MemberService;

@Controller
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/")
	public String home(HttpSession session) { 
		List<Map<String,Object>>memAddList = new ArrayList<Map<String,Object>>();

		if (memberService.countMemberAll() > 0) {
			while (memAddList.size()<20) {
				int rand = (int)(Math.random()*memberService.countMemberByClient())+1;
				rand += 10000; // 10001~회원갯수 중 랜덤

				MemberVO vo = memberService.getMemberByUnum(rand);
				Map<String,Object> map = new HashMap<String, Object>();
				
				map.put("member", vo);
				map.put("addition", memberService.getAddtionByUnum(vo.getUnum()));
				memAddList.add(map);
			}
		} else {
			memAddList = null;
		}
		session.setAttribute("maList", memAddList);

		// 리다이렉트일 경우 HttpStatus.Found 지정해야 함
		return "main/main";
	}
	
	@GetMapping("/about")
	public String about() {return "etc/about";}
	
	@GetMapping("/contact")
	public String contact() {return "etc/contact";}
	
	@GetMapping("/pricing")
	public String pricing() {return "etc/pricing";}

}
