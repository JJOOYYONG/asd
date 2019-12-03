package com.exam.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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

import com.exam.domain.AttachVO;
import com.exam.domain.MemberVO;
import com.exam.service.MemberService;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("join")
	public void join() {}

	@PostMapping("join")
	public ResponseEntity<String> join(MemberVO memberVO) {

		String email = memberVO.getEmail();
		
		// 회원번호 생성
		// 모든 회원은 10001번 이상의 번호를 부여받고, 10000이하의 번호에게 관리자 권한을 주기
		int count = memberService.countMemberByClient();
		count += 10001;
		memberVO.setUnum(count);
		
		// 주민번호로부터 나이 추출
		int age = 0;
		try {
			String birthYear = memberVO.getResidentId().substring(0, 2);
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
			
			Date birthday = sdf.parse(birthYear+"-01-01");
			Calendar calBirth = new GregorianCalendar();
		    Calendar calToday = new GregorianCalendar();

		    calBirth.setTime(birthday);
		    calToday.setTime(new Date());

		    age = calToday.get(Calendar.YEAR) - calBirth.get(Calendar.YEAR) + 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			memberVO.setAge(age);
		}
		
		// 주민번호로부터 성별 추출
		String backNumber = memberVO.getResidentId().split("-")[1];
		if (backNumber.startsWith("1") || backNumber.startsWith("3")) {
			memberVO.setGender("남자");
		} else {
			memberVO.setGender("여자");
		}
		
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
		sb.append("location.href='/member/addpic';");
		sb.append("</script>");

		return new ResponseEntity<String>(sb.toString(), headers, HttpStatus.OK);

	}

	@GetMapping("login")
	public void login() {}

	@PostMapping("login")
	public ResponseEntity<String> login(String email, String passwd, HttpSession session) {
		
		int check=memberService.userCheck(email, passwd);
		
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
		String name = memberVO.getUsername();
		int num = memberVO.getUnum();
		session.setAttribute("name", name);
		session.setAttribute("num", num);
		session.setAttribute("email", email);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Location", "/"); // 리다이렉트 경로 위치 지정

		// 리다이렉트일 경우 HttpStatus.Found 지정해야 함
		return new ResponseEntity<String>(headers, HttpStatus.FOUND);
		
	}

	@GetMapping("logout")
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

	@GetMapping("joinIdDupCheckJson")
	@ResponseBody
	public boolean joinIdDupCheckJson(String id) {
		boolean isIdDup = memberService.isIdDuplicated(id);
		return isIdDup;
	}
	
	@GetMapping("mypage")
	public String mypage(String email, Model model) {
		
		MemberVO memberVO = memberService.getMemberByEmail(email);
		System.out.println(email);
		System.out.println(memberVO);
		model.addAttribute("member", memberVO);
		
		return "member/mypage";
	}
	
	@PostMapping("upmypage")
	public String upmypage(MultipartFile[] files, MemberVO memberVO, HttpServletRequest request) throws Exception{
		
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/resources/upload");
				
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		
//		String mpic="";
//		MemberVO nofixVO = memberService.getMemberByEmail(memberVO.getEmail());
		
		for(MultipartFile multipartFile : files) {
//			if(multipartFile.isEmpty()) {
//				mpic=nofixVO.getMpic();
//				continue;
//			}
			
			String uploadFileName = multipartFile.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			File saveFile = new File(realPath, uploadFileName);
		
			multipartFile.transferTo(saveFile);
			
			AttachVO attachVO = new AttachVO();
			attachVO.setUnum(memberVO.getUnum());
			attachVO.setUuid(uuid.toString());
			attachVO.setPath(realPath);
			attachVO.setName(multipartFile.getOriginalFilename());
			
//			mpic=multipartFile.getOriginalFilename();
			
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
		
		
//		memberVO.setMpic(mpic);
//		memberService.updateMember(memberVO);
//		attachService.insertAttaches(attachList);
		
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