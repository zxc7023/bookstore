package com.bookstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookstore.vo.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 사용하려는 이용자의 아이디에 해당하는 정보를 데이터베이스에서 가져온다. 가져온 데이터를 비교한 후에 해당하는 문자열을 리턴
	 * 
	 * @param member_id
	 * @param member_password
	 * @return 정상/비밀번호 확인/ 가입
	 */
	public String login(String member_id, String member_password) {

		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs;

		String result = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/bookSell");
			con = ds.getConnection();
			System.out.println("MemberDAO의 login메소드 Connection 연결 성공");

			String selectsql = "select * from member where member_id = ?";
			pt = con.prepareStatement(selectsql);
			pt.setString(1, member_id);
			rs = pt.executeQuery();

			String resultId = null;
			String resultPw = null;
			String resultType = null;

			while (rs.next()) {
				resultId = rs.getString("member_id");
				resultPw = rs.getString("member_password");
				resultType = rs.getString("member_type");
			}


			if(resultType!=null) {
				if(Integer.parseInt(resultType)==0) {
				if(member_id.equals(resultId)) {
					if (member_password.equals(resultPw)) {
						result = " 정상";
					} else {
						result = "암호";
					}
				}
			}else {
				result = "암호";//탈퇴
			}
			}
			else {
				result = "암호";//가입
			}

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return result;
	}
	
	

	/**
	 * id에 해당하는 정보를 가져온다.
	 * @param vo : 맴버 변수 id를 입력받은 값으로 설정 해준 객체.
	 * @return 로그인 처리를 위해 필요한 id, password, type 컬럼을 저장한 객체.
	 * @throws Exception 모든 Exception을 받아서 Service에 전달하고 Service에서는 controller에 전달
	 * 최종처리는 Controller에서 해야한다. 
	 */
	public UserVO selectByID(UserVO vo){
		UserVO tmp = sqlSession.selectOne("UserMapper.selectByID",vo);
		System.out.println(tmp);
		return tmp;
	}

	
	
}
