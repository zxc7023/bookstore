package com.bookstore.service;

import com.bookstore.vo.UserVO;

public interface UserService {
	/**
	 * 유저의 정보를 객체로 받아 해당하는 유저의 로그인 정보가 맞는지 확인한다.
	 * 
	 * @param vo
	 *            유저의 아이디, 비밀번호 정보가 담긴 객체
	 * @return 해당 유저 정보가 담긴 객체를 반환
	 * @throws Exception 
	 */
	public UserVO login(UserVO vo) throws Exception;
}
