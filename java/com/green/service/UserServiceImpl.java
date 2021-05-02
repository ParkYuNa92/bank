package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mapper.UserMapper;
import com.green.vo.UserVO;

import lombok.Setter;
@Service
public class UserServiceImpl implements UserService{
	@Setter(onMethod_= @Autowired)
	UserMapper mapper;
	@Override
	public List<UserVO> list() {
		
		return mapper.list();
	}
	@Override
	public UserVO read(int free_id) {
		
		return mapper.read(free_id);
	}
	@Override
	public void update(UserVO vo) {
		mapper.update(vo);
		
	}



}
