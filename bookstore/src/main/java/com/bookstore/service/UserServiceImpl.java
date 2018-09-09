package com.bookstore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookstore.dao.UserDAO;
import com.bookstore.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO dao;
	
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return dao.selectByID(vo);
	}

}
