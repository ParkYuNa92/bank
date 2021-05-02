package com.green.mapper;

import java.util.List;

import com.green.vo.LoanVO;

public interface LoanMapper {
	public List<LoanVO> list();
	public void insert(LoanVO vo);
}
