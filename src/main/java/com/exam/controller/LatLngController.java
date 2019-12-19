package com.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exam.domain.LatLngVO;
import com.exam.service.MemberService;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("latLng")
@Log4j
public class LatLngController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping(value = "getUnum/{email}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<Integer> unum(@PathVariable("email") String email) {
		int unum = memberService.getMemberByEmail(email).getUnum();
		return new ResponseEntity<Integer>(unum, HttpStatus.OK);
	}
	
	@PostMapping(value = "insert", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> latLng(
			@RequestBody LatLngVO latLngVO,
			String email) {
		
		log.info("POST latLngVO: "+latLngVO);
		
		int successCount = 0;
		
		if (memberService.isLatLngExist(latLngVO.getUnum())) {
			successCount = memberService.updateLatLng(latLngVO);
		} else {
			successCount = memberService.insertLatLng(latLngVO);
		}
		
		ResponseEntity<String> entity = null;
		if (successCount > 0) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@GetMapping(value = "getList/{unum}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<LatLngVO>> getList(@PathVariable("unum") int unum) {
		log.info("unum: "+unum);
		List<LatLngVO> latLngList = memberService.getLatLngAll(unum);
		log.info("GET latLngList: "+latLngList);
		return new ResponseEntity<List<LatLngVO>>(latLngList, HttpStatus.OK);
	}
}
