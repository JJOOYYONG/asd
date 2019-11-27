package com.wwm.ww4;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.wwm.domain.FreeBoardVO;
import com.wwm.service.AttachService;
import com.wwm.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private AttachService attachService;
	
	@GetMapping("/list")
	public String boardlist(
			@RequestParam(defaultValue = "1") int pageNum, 
			@RequestParam(defaultValue = "", required = false) String search, Model model) {		

		int pageSize = 10;
		int count = boardService.getBoardCount(search);
		int startRow = (pageNum-1)*pageSize;
		
		List<FreeBoardVO> boardList = boardService.getBoards(startRow, pageSize, search);
		
		// 총 페이지 개수 구하기 (전체글개수/페이지당 글개수 (+1:나머지가 있을 때))
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);

		// 페이지 블록 수 설정(표시되는 페이지 수)
		int pageBlock = 5;

		// 시작페이지 번호 구하기
		int startPage = ((pageNum - 1) / pageBlock) * pageBlock + 1;

		// 끝페이지 번호 구하기
		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) {endPage = pageCount;}
		
		// 페이지 블록 관련정보를 MAP으로 준비 (VO객체도 가능)
		Map<String, Integer> pageInfoMap = new HashMap<String, Integer>();
		pageInfoMap.put("count", count);
		pageInfoMap.put("pageCount",pageCount);
		pageInfoMap.put("pageBlock",pageBlock);
		pageInfoMap.put("startPage", startPage);
		pageInfoMap.put("endPage", endPage);
		pageInfoMap.put("startRow", startRow);

		// 뷰(JSP)에 사용할 데이터를 request 영역객체에 저장
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageInfoMap", pageInfoMap);
		model.addAttribute("startRow", startRow);
		model.addAttribute("search", search);
		model.addAttribute("pageNum", pageNum);
		
		return "board/list";
	}
	
	@GetMapping("/write")
	public String write() {
		return "board/write";
	}
	
	@PostMapping("/write")
	public void write(MultipartFile[] files, FreeBoardVO boardVO, HttpServletRequest request) throws Exception{
		
		int num = boardService.nextBoardNum();
		
		boardVO.setNum(num);
		boardVO.setIp(request.getLocalAddr());
		
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/resources/uploadFB");
		
		
		
		
		
	}
	
	
}
