package com.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.AdminData;
import com.bean.InstructorData;
import com.bean.Services;
import com.bean.StudentData;
import com.dao.AdminDao;
import com.dao.InstructorDao;
import com.dao.StudentDao;
import com.mysql.cj.Session;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("logout"))
		{
			HttpSession session = request.getSession();
			session.removeAttribute("ad");
			session.invalidate();
			response.sendRedirect("admin-login.jsp");
			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("Login"))
		{
			AdminData ad = new AdminData();
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			ad.setName(name);
			ad.setPassword(password);
			AdminData ad1 = AdminDao.getData(ad);
			if(Objects.isNull(ad1))
			{
				response.sendRedirect("admin-login.jsp");
			}
			else if(ad1.getName().equals(name) && ad1.getPassword().equals(password))
			{
				HttpSession session = request.getSession();
				session.setAttribute("ad", ad);
//				request.getRequestDispatcher("admin-index.jsp").forward(request, response);
				response.sendRedirect("admin-index1.jsp");
			}
			else
			{
				response.sendRedirect("admin-login.jsp");
			}
		}
		
		if(action.equals("logout"))
		{
			HttpSession session = request.getSession();
			session.removeAttribute("ad");
			session.invalidate();
			response.sendRedirect("admin-login.jsp");
		}
		
		if(action.equals("studentregister"))
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
			AdminDao.StudentRegister(sd);
			
			String emailid = request.getParameter("email");
			String erno = request.getParameter("erno");
			String password = request.getParameter("password");
			Services s = new Services();
			s.sendMail(erno,password,emailid);
			
			response.sendRedirect("admin-StudentData.jsp");
		}
		
		if(action.equals("instructorregister"))
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
			AdminDao.InstructorRegister(ind);
			
			String emailid = request.getParameter("email");
			String uid = request.getParameter("uid");
			String password = request.getParameter("password");
			Services s = new Services();
			s.sendMail(uid,password,emailid);
			
			response.sendRedirect("admin-InstructorData.jsp");
		}
		
		if(action.equals("updatestudent"))
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
			
			AdminDao.StudentUpdate(sd);
			response.sendRedirect("admin-StudentData.jsp");
		}
		
		if(action.equals("updateinstructor"))
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
			AdminDao.InstructorUpdate(ind);
			response.sendRedirect("admin-InstructorData.jsp");
		}
		
		if(action.equals("deletestudent"))
		{
			StudentData s = new StudentData();
			s.setId(Integer.parseInt(request.getParameter("id")));
			AdminDao.DeleteStudent(s);
			response.sendRedirect("admin-StudentData.jsp");
		}
		
		if(action.equals("deleteinstructor"))
		{
			InstructorData i = new InstructorData();
			i.setId(Integer.parseInt(request.getParameter("id")));
			AdminDao.DeleteInstructor(i);
			response.sendRedirect("admin-InstructorData.jsp");
		}
	}

}
