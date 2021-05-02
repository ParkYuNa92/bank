package com.green.service;

import java.util.List;

import com.green.vo.UserVO;

public interface UserService {
	public List<UserVO> list();
	public UserVO read(int free_id);
	public void update(UserVO vo);

}
