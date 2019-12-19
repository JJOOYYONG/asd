package com.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@PostMapping(value = "insert", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> latLng(
			@RequestParam("lat")double lat,
			@RequestParam("lng")double lng,
			String email) {
		log.info("lat: "+lat+", lng: "+lng);
		int unum = memberService.getMemberByEmail(email).getUnum();
		LatLngVO latLngVO = new LatLngVO();
		latLngVO.setLat(lat);
		latLngVO.setLng(lng);
		latLngVO.setUnum(unum);
		
		int successCount = 0;
		
		if (memberService.isLatLngExist(unum)) {
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
}
