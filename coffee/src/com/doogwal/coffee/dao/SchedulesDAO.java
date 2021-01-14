package com.doogwal.coffee.dao;

import org.apache.ibatis.session.SqlSession;

import com.doogwal.coffee.util.SqlSessionUtil;
import com.doogwal.coffee.vo.Gathering;
import com.doogwal.coffee.vo.Meeting;

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
	}//insert end
	
	
	//박형우 start -----------------------------------------------------------------------
	//20210114 start
		// upcomming event를 가져오는
		public static Gathering selectUpcommingGathring(int no) {
			
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				
				return session.selectOne("schedules.selectUpcommingGathring", no);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			
			return null;
		}
		public static Meeting selectUpcommingMeeting(int no) {
			
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				
				return session.selectOne("schedules.selectUpcommingMeeting", no);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			
			return null;
		}
	//20210114 end
	//박형우 end -----------------------------------------------------------------------

	
	
	
}////SchedulesDAO end
