package com.green.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.service.LoanService;
import com.green.vo.LoanVO;

import lombok.Setter;

@Controller
@RequestMapping("/loan/*")
public class LoanController {
	@Setter(onMethod_=@Autowired)
	LoanService service;
	
	@PostMapping(value = "/new", consumes = "application/json",produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody LoanVO vo){

		return null;	
	}

}
