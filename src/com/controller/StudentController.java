package com.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Services;
import com.bean.StudentData;
import com.dao.StudentDao;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("logout"))
		{
			HttpSession session = request.getSession();
			session.removeAttribute("login");
			session.invalidate();
			response.sendRedirect("student-login.jsp");
			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("Register"))
		{
			StudentData sd = new StudentData();
			sd.setFname(request.getParameter("fname"));
			sd.setLname(request.getParameter("lname"));
			sd.setErno(request.getParameter("erno"));
			sd.setEmail(request.getParameter("email"));
			sd.setContact(request.getParameter("contact"));
			sd.setCollege(request.getParameter("college"));
			sd.setYear(Integer.parseInt(request.getParameter("year")));
			sd.setBranch(request.getParameter("branch"));
			sd.setPassword(request.getParameter("password"));
			StudentDao.StudentRegister(sd);
			
			String emailid = request.getParameter("email");
			String erno = request.getParameter("erno");
			String password = request.getParameter("password");
			Services s = new Services();
			s.sendMail(erno,password,emailid);
			
			response.sendRedirect("student-login.jsp");
		}
		
		if(action.equals("Login"))
		{
			StudentData sd = new StudentData();
			sd.setErno(request.getParameter("erno"));
			sd.setPassword(request.getParameter("password"));
			
			StudentData s = StudentDao.StudentLogin(sd);
			if(Objects.isNull(s))
			{
				response.sendRedirect("student-register.jsp");
			}
			else if(sd.getErno().equals(s.getErno()) && sd.getPassword().equals(s.getPassword()))
			{
				HttpSession session = request.getSession();
				session.setAttribute("login", s);
//				request.getRequestDispatcher("courses.jsp").forward(request, response);
				response.sendRedirect("courses.jsp");
			}
			else
			{
				response.sendRedirect("student-register.jsp");
			}
		}
		
		if(action.equals("logout"))
		{
			HttpSession session = request.getSession();
			session.removeAttribute("login");
			session.invalidate();
			response.sendRedirect("student-login.jsp");
			
		}
		
		if(action.equals("Update"))
		{
			StudentData sd = new StudentData();
			sd.setId(Integer.parseInt(request.getParameter("id")));
			sd.setFname(request.getParameter("fname"));
			sd.setLname(request.getParameter("lname"));
			sd.setErno(request.getParameter("erno"));
			sd.setEmail(request.getParameter("email"));
			sd.setContact(request.getParameter("contact"));
			sd.setCollege(request.getParameter("college"));
			sd.setYear(Integer.parseInt(request.getParameter("year")));
			sd.setBranch(request.getParameter("branch"));
			sd.setPassword(request.getParameter("password"));
			
			StudentDao.StudentUpdate(sd);
			HttpSession session = request.getSession();
			session.setAttribute("login", sd);
//			request.getRequestDispatcher("courses.jsp").forward(request, response);
			response.sendRedirect("courses.jsp");
		}
	}

}
