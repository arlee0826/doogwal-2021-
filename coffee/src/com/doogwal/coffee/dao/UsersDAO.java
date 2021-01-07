package com.doogwal.coffee.dao;

import org.apache.ibatis.session.SqlSession;

import com.doogwal.coffee.util.SqlSessionUtil;
import com.doogwal.coffee.vo.User;

public class UsersDAO {
	//�α��ν� �α����� �� �ִ� ������ �´��� Ȯ���ϴ�
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
