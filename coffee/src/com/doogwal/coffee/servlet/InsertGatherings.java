package com.doogwal.coffee.servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doogwal.coffee.dao.DistrictsDAO;
import com.doogwal.coffee.dao.GatheringsDAO;
import com.doogwal.coffee.dao.SchedulesDAO;
import com.doogwal.coffee.vo.District;
import com.doogwal.coffee.vo.Gathering;

 @WebServlet("/gatheringRegister.coffee")
 public class InsertGatherings extends HttpServlet{

 @Override
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	 req.setCharacterEncoding("utf-8");  
	 
	 String startTime = req.getParameter("startTime");
	 String endTime = req.getParameter("endTime");
	 String date = req.getParameter("date");
	 String name = req.getParameter("name");
	 String address = req.getParameter("address");
	 String description = req.getParameter("description");
	 String feeString = req.getParameter("fee");
	 String preparation = req.getParameter("preparation");
	 String location = req.getParameter("location");
	 String allDay = req.getParameter("allDay");
	 System.out.println(allDay);
	 System.out.println(name);
	 System.out.println(endTime);
	 System.out.println(startTime);
	 System.out.println(date);
	 System.out.println(address);
	 System.out.println(description);
	 System.out.println(preparation);
	 
	 int fee = Integer.parseInt(feeString); //회비
	 System.out.println(fee);
	 
	 String strDate = "2017-10-17 23:20"; 
	 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm"); 
	 Date startDate = sdf.parse(strDate);
	 String strwDate = "2017-10-17 23:20"; 
	 SimpleDateFormat sdfw = new SimpleDateFormat("yyyy-MM-dd HH:mm"); 
	 Date endDate = sdfw.parse(strDate);

	
     
	 
	 System.out.println(location);
	 String[] array = location.split(",");
	 double lat = Double.parseDouble(array[0].substring(1)); //위도
	 System.out.println(lat);
	 String lngt = array[1];
	 double lng = Double.parseDouble(lngt.substring(1,lngt.length()-1)); //경도
	 
	 System.out.println(lng);
	 
	 char type = 'G'; //TYPE (G는 모임)
	 
	 String[] addressToken = address.split(" ");
	 System.out.println(addressToken[1]);
	 District district = DistrictsDAO.selectOne(addressToken[1]); //행정구역 번호 받아옴 
	 int districtNo = district.getNo(); //행정구역 번호
	 System.out.println(districtNo);

	 String[] preparationToken = preparation.split(",");
	 System.out.println(preparationToken[0]);
	 System.out.println(preparationToken[1]); //한개일 경우 에러가 떠요 수정!!
	 
	 System.out.println("-1");
	 int crewNo = 500; //임시 크루번호
	 System.out.println("0");
	 Gathering schedule = new Gathering(districtNo, crewNo, type, startDate, endDate, name, address, description, lat, lng);
	 System.out.println("1");
	 SchedulesDAO.insert(schedule);
	 System.out.println("2");
	 Gathering gathering = new Gathering(fee);
	 System.out.println("3");
	 GatheringsDAO.insert(gathering);
	 System.out.println("4");
 }
}		


 
 
 

 
