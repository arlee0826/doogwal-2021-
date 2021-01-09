package com.doogwal.coffee.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 @WebServlet("/gatheringRegister.coffee")
 public class InsertGatherings extends HttpServlet{

 @Override
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	 req.setCharacterEncoding("utf-8");  
	 
	 String startTime = req.getParameter("startTime");
	 String endTime = req.getParameter("endTime");
	 String month = req.getParameter("date");
	 String name = req.getParameter("name");
	 String address = req.getParameter("address");
	 String description = req.getParameter("description");
	 String fee = req.getParameter("fee");
	 String preparation = req.getParameter("preparation");
	 String location = req.getParameter("location");
	
	 System.out.println(name);
	 System.out.println(endTime);
	 System.out.println(startTime);
	 System.out.println(month);
	 System.out.println(address);
	 System.out.println(description);
	 System.out.println(preparation);
	 System.out.println(fee);
	 
	 String startDate = (month+" "+startTime); 
	 String endDate =  (month+" "+endTime);
	 System.out.println(startDate);
	 System.out.println(endDate);
	 
	 System.out.println(location);
	 String[] array = location.split(",");
	 String lat = array[0].substring(1);
	 System.out.println(lat);
	 String lngt = array[1];
	 String lng = lngt.substring(1,lngt.length()-1);
	 System.out.println(lng);
	 
	 String type = "G";
	 
	 String[] addressToken = address.split(" ");
	 System.out.println(addressToken[1]);
	 System.out.println("1");
 }
}
