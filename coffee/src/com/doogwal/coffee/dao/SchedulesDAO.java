package com.doogwal.coffee.dao;

import org.apache.ibatis.session.SqlSession;

import com.doogwal.coffee.util.SqlSessionUtil;
import com.doogwal.coffee.vo.Gathering;

public class SchedulesDAO {
	public static int insert(Gathering schedule) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("schedules.insert",schedule);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return 0;
	}
}
