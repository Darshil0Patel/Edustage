package com.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.InstructorData;
import com.bean.Services;
import com.bean.StudentData;
import com.dao.InstructorDao;
import com.dao.StudentDao;

/**
 * Servlet implementation class InstructorController
 */
@WebServlet("/InstructorController")
public class InstructorController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("logout"))
		{
			HttpSession session = request.getSession();
			session.removeAttribute("login");
			session.invalidate();
			response.sendRedirect("instructor-login.jsp");
			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("Register"))
		{
			InstructorData ind = new InstructorData();
			ind.setFname(request.getParameter("fname"));
			ind.setLname(request.getParameter("lname"));
			ind.setUid(request.getParameter("uid"));
			ind.setEmail(request.getParameter("email"));
			ind.setContact(request.getParameter("contact"));
			ind.setCollege(request.getParameter("college"));
			ind.setSubject(request.getParameter("subject"));
			ind.setPassword(request.getParameter("password"));
			ind.setYear(Integer.parseInt(request.getParameter("year")));
			InstructorDao.InstructorRegister(ind);
			
			String emailid = request.getParameter("email");
			String uid = request.getParameter("uid");
			String password = request.getParameter("password");
			Services s = new Services();
			s.sendMail(uid,password,emailid);
			
			response.sendRedirect("instructor-login.jsp");
		}
		
		if(action.equals("Login"))
		{
			InstructorData ind = new InstructorData();
			ind.setUid(request.getParameter("uid"));
			ind.setPassword(request.getParameter("password"));
			
			InstructorData i = InstructorDao.InstructorLogin(ind);
			if(Objects.isNull(i))
			{
				response.sendRedirect("instructor-register.jsp");
			}
			else if(ind.getUid().equals(i.getUid()) && ind.getPassword().equals(i.getPassword()))
			{
				HttpSession session = request.getSession();
				session.setAttribute("login", i);
//				request.getRequestDispatcher("instructor-video.jsp").forward(request, response);
				response.sendRedirect("instructor-video.jsp");
			}
			else
			{
				response.sendRedirect("instructor-register.jsp");
			}
		}
		
		if(action.equals("logout"))
		{
			HttpSession session = request.getSession();
			session.removeAttribute("login");
			session.invalidate();
			response.sendRedirect("instructor-login.jsp");
		}
		
		if(action.equals("Update"))
		{
			InstructorData ind = new InstructorData();
			ind.setId(Integer.parseInt(request.getParameter("id")));
			ind.setFname(request.getParameter("fname"));
			ind.setLname(request.getParameter("lname"));
			ind.setUid(request.getParameter("uid"));
			ind.setEmail(request.getParameter("email"));
			ind.setContact(request.getParameter("contact"));
			ind.setCollege(request.getParameter("college"));
			ind.setSubject(request.getParameter("subject"));
			ind.setPassword(request.getParameter("password"));
			ind.setYear(Integer.parseInt(request.getParameter("year")));
			InstructorDao.InstructorUpdate(ind);
			HttpSession session = request.getSession();
			session.setAttribute("login", ind);
//			request.getRequestDispatcher("instructor-video.jsp").forward(request, response);
			response.sendRedirect("instructor-video.jsp");
		}
		
		if(action.equals("Upload"))
		{
			InstructorData ind = new InstructorData();
			ind.setId(Integer.parseInt(request.getParameter("id")));
			ind.setFname(request.getParameter("fname"));
			ind.setLname(request.getParameter("lname"));
			ind.setUid(request.getParameter("uid"));
			ind.setEmail(request.getParameter("email"));
			ind.setContact(request.getParameter("contact"));
			ind.setCollege(request.getParameter("college"));
			ind.setSubject(request.getParameter("subject"));
			ind.setPassword(request.getParameter("password"));
			ind.setVideo(request.getParameter("Link"));
			ind.setYear(Integer.parseInt(request.getParameter("year")));
			InstructorDao.InstructorVideo(ind);
			HttpSession session = request.getSession();
			session.setAttribute("login", ind);
//			request.getRequestDispatcher("instructor-video.jsp").forward(request, response);
			response.sendRedirect("instructor-video.jsp");
		}
	}

}
