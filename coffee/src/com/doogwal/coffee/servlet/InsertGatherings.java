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
	
	 
	 
   //한글
//	 resp.setContentType("text/html;charset=UTF-8");
//     System.out.println("ThirdServlet!!");
//     System.out.println(name);
//     System.out.println(fee);
//     PrintWriter out = resp.getWriter();
//     out.println("<h1>좋은 하루!<h1>");
//     out.println(name);
//     out.close();
	 System.out.println(name);
	 
 }
}
