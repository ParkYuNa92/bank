package com.green.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.green.vo.LoanVO;
@Service
public interface LoanService {
	public List<LoanVO> list();
	public LoanVO read(int custom_id);

}
