package com.green.mapper;

import java.util.List;

import com.green.vo.UserVO;

public interface UserMapper {
	public List<UserVO> list();
	public UserVO read(int free_id);
	public void update(UserVO vo);

}
