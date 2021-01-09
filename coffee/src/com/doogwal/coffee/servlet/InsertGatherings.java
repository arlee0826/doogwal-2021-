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
	
	 System.out.println(name);
	 System.out.println(endTime);
	 System.out.println(startTime);
	 System.out.println(month);
	 System.out.println(address);
	 System.out.println(description);
	 System.out.println(preparation);
	 System.out.println(fee);
	 
 }
}
