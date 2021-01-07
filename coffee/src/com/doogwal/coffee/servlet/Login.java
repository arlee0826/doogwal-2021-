package com.doogwal.coffee.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.doogwal.coffee.dao.UsersDAO;
import com.doogwal.coffee.vo.User;

@WebServlet("/login.do")
public class Login extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//�켱 ���� ���
		HttpSession session = req.getSession();
		
		//���̵�� ��й�ȣ �ޱ�
		String id = req.getParameter("loginId");
		String password = req.getParameter("loginPassword");
		
		System.out.println(id);
		System.out.println(password);
		
		//���� ��ü ����
		User user = new User();
		user.setEmail(id);
		user.setPassword(password);
		
		//������ �´��� Ȯ��
		User loginUser = UsersDAO.selectLogin(user);
		
		if(loginUser!=null) {
			session.setAttribute(User.LOGIN, loginUser);
			System.out.println("����");
		}else {
			session.setAttribute("fail", "true");
			System.out.println("����");
		}//if~else end
		
		resp.sendRedirect("/loginForm.jsp");
	}
}
