package com.doogwal.coffee.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gatheringRegister.coffee")
public class InsertGathrings extends HttpServlet{

 @Override
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	 
	 String startTime = req.getParameter("startTime");
	 String endTime = req.getParameter("endTime");
	 String month = req.getParameter("date");
	 String name = req.getParameter("nameGathering");
	 String address = req.getParameter("address");
	 String description = req.getParameter("description");
	 String lat = req.getParameter("lat");
	 String lng = req.getParameter("lng");
	 String fee = req.getParameter("dues");
	 String preparation = req.getParameter("preparation");
	

	
	
	 
	 
	
 }
}
