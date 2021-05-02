package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mapper.LoanMapper;
import com.green.vo.LoanVO;

import lombok.Setter;

@Service
public class LoanServiceImpl implements LoanService {
	@Setter(onMethod_= @Autowired)
	LoanMapper mapper;

	@Override
	public List<LoanVO> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LoanVO read(int custom_id) {
		// TODO Auto-generated method stub
		return null;
	}
}
