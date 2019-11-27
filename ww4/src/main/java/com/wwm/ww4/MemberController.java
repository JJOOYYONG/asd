package com.wwm.ww4;


import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wwm.domain.AttachVO;
import com.wwm.domain.MemberVO;
import com.wwm.service.AttachService;
import com.wwm.service.BoardService;
import com.wwm.service.MemberService;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AttachService attachService;

	@GetMapping("/join2")
	public String join2() {
		return "member/join2";
	}

	@PostMapping("/join2")
	public ResponseEntity<String> join2(MemberVO memberVO) {

		String mail = memberVO.getEmail();
		int idx = mail.indexOf("@");
		String id=mail.substring(0,idx);
		
		int count = memberService.countMemberAll();
		count++;
		
		
		memberVO.setNum(count);
		memberVO.setId(id);
		memberVO.setGold(0);
		memberVO.setPoint(0);
		memberVO.setPointcount(0);
		
		int check = memberService.insertMember(memberVO);
		
		String message = "";

		if (check != 0) {
			message = "회원가입에 성공했습니다.";
		} else {
			message = "회원가입에 실패했습니다.";
		}

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		StringBuilder sb = new StringBuilder();
		sb.append("<script>");
		sb.append("alert('" + message + "');");
		sb.append("location.href='/member/login2';");
		sb.append("</script>");

		return new ResponseEntity<String>(sb.toString(), headers, HttpStatus.OK);

	}


	@GetMapping("/login2")
	public String login2() {
		return "member/login2";
	}

	@PostMapping("/login2")
	public ResponseEntity<String> login2(String email, String passwd, HttpSession session) {
		
		int check=memberService.userCheckByEmail(email, passwd);
		
		// 로그인 실패
		if (check != 1) {
			String message = "";
			if (check == -1) {
				message = "아이디가 없습니다";
			} else if (check == 0) {
				message = "패스워드가 다릅니다.";
			}

			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			StringBuilder sb = new StringBuilder();
			sb.append("<script>");
			sb.append("alert('" + message + "');");
			sb.append("history.back();");
			sb.append("</script>");
			
			return new ResponseEntity<String>(sb.toString(), headers, HttpStatus.OK);

		}
		
		// 로그인 성공
		MemberVO memberVO = memberService.getMemberByEmail(email);
		String id = memberVO.getId();
		String name = memberVO.getName();
		int num = memberVO.getNum();
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		session.setAttribute("num", num);
		session.setAttribute("email", email);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Location", "/"); // 리다이렉트 경로 위치 지정

		// 리다이렉트일 경우 HttpStatus.Found 지정해야 함
		return new ResponseEntity<String>(headers, HttpStatus.FOUND);
		
	}

	@GetMapping("/logout")
	public ResponseEntity<String> logout(HttpSession session) {
		session.invalidate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");

		StringBuilder sb = new StringBuilder();
		sb.append("<script>");
		sb.append("alert('로그아웃되었습니다.');");
		sb.append("location.href = '/';");
		sb.append("</script>");

		return new ResponseEntity<String>(sb.toString(), headers, HttpStatus.OK);

	}

	@GetMapping("/joinIdDupCheckJson")
	@ResponseBody
	public boolean joinIdDupCheckJson(String id) {
		boolean isIdDup = memberService.isIdDuplicated(id);
		return isIdDup;
	}
	
	@GetMapping("/mypage")
	public String mypage(String email, Model model) {
		
		MemberVO memberVO = memberService.getMemberByEmail(email);
		int bno=memberVO.getNum();
		
		
		model.addAttribute("member", memberVO);
		
		return "member/mypage";
	}
	
	@PostMapping("/upmypage")
	public String upmypage(MultipartFile[] files, MemberVO memberVO, HttpServletRequest request) throws Exception{
				
	
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/resources/upload");
				
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		
		String mpic="";
		MemberVO nofixVO = memberService.getMemberById(memberVO.getId());
		
		
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.isEmpty()) {
				mpic=nofixVO.getMpic();
				continue;
			}
			
			String uploadFileName = multipartFile.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			File saveFile = new File(realPath, uploadFileName);
		
			multipartFile.transferTo(saveFile);
			
			AttachVO attachVO = new AttachVO();
			attachVO.setBno(memberVO.getNum());
			attachVO.setUuid(uuid.toString());
			attachVO.setUploadpath(realPath);
			attachVO.setFilename(multipartFile.getOriginalFilename());
			
			mpic=multipartFile.getOriginalFilename();
			
			if(isImageType(saveFile)) {
				File thumnailFile = new File(realPath, "s_"+uploadFileName);
				try(FileOutputStream fos = new FileOutputStream(thumnailFile)){
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), fos, 100, 100);
				}
				attachVO.setFiletype("I");
			} else {
				attachVO.setFiletype("O");
			}
			
			attachList.add(attachVO);
			
		} // for문
		
		
		memberVO.setMpic(mpic);
		memberService.updateMember(memberVO);
		attachService.insertAttaches(attachList);
		
		
		
		return "main/main";
	}
	
	
	private boolean isImageType(File file) throws Exception {
		boolean isImageType=false;
		
		String contentType=Files.probeContentType(file.toPath());
			
		if(contentType!=null) {
			isImageType=contentType.startsWith("image");
		} else {
			isImageType=false;
		}
		
		return isImageType;
	}
	
	

}