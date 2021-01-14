package com.doogwal.coffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.doogwal.coffee.util.SqlSessionUtil;
import com.doogwal.coffee.vo.Attendance;
import com.doogwal.coffee.vo.CrewMember;

public class AttendancesDAO {

	//박형우 start -----------------------------------------------------------------------
	//20210114 start
		// 참석이 Y인 attendance를 가져오는
		public static Attendance selectYAttendance(int no) {
			
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				
				return session.selectOne("attendances.selectYAttendance",no);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			
			return null;
		}
		
		// 참석자의 수를 가져오는 
		public static int selectYAttendanceCount(int no) {
			
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				
				return session.selectOne("attendances.selectYAttendanceCount",no);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			
			return 0;
		}
		
		// 참석자들의 user 정보를 가져오는
		public static List<CrewMember> selectYAttendanceList(int no) {
			
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				
				return session.selectList("attendances.selectYAttendanceList",no);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			
			return null;
		}
	//20210114 end
	//박형우 end -----------------------------------------------------------------------

	
}//AttendancesDAO end
