package com.doogwal.coffee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.doogwal.coffee.util.SqlSessionUtil;
import com.doogwal.coffee.vo.Crew;

public class CrewsDAO {
	
	//selectList 구문
		public static List<Crew> selectSearchList(Map<String, Object> data) {
			
			List<Crew> list = null;
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				list = session.selectList("crews.selectSearchList",data);
							
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session!=null) {
					session.close();
			}//if end
			}//try~catch~finally end

			return list;
			}//selectList() end
	
	
}//CrewsDAO end
