package com.doogwal.coffee.dao;

import org.apache.ibatis.session.SqlSession;

import com.doogwal.coffee.util.SqlSessionUtil;
import com.doogwal.coffee.vo.User;

public class UsersDAO {
	//로그인시 로그인할 수 있는 유저가 맞는지 확인하는
	public static User selectLogin(User user) {
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			return session.selectOne("users.selectLogin",user);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return null;
	}
}
