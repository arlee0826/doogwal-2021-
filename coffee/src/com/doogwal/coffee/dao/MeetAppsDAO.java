package com.doogwal.coffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.doogwal.coffee.util.SqlSessionUtil;
import com.doogwal.coffee.vo.Meeting;

public class MeetAppsDAO {

	//박형우 start -----------------------------------------------------------------------
		//20210114 start
			//모임에 참석하는 유저를 가져오는
			public static List<Meeting> weApplymeetingList(int no) {
				
				SqlSession session = null;
				
				try {
					session = SqlSessionUtil.getSession();
					
					return session.selectList("meetApps.weApplymeetingList",no);
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					session.close();
				}
				
				return null;
			}
		//20210114 end
		//박형우 end ----------------------------------------------------------------------- 
	
		
}//MeetAppsDAO end
