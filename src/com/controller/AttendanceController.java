package com.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.SimpleTimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AttendanceData;
import com.dao.AttendanceDao;

/**
 * Servlet implementation class AttendanceController
 */
@WebServlet("/AttendanceController")
public class AttendanceController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action = request.getParameter("action");

		if(action.equalsIgnoreCase("Present"))
		{
			AttendanceData ad = new AttendanceData();
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			int sid = Integer.parseInt(request.getParameter("sid"));
			String erno = request.getParameter("erno");
			String college = request.getParameter("college");
			int year = Integer.parseInt(request.getParameter("year"));
			String branch = request.getParameter("branch");
			String subject = request.getParameter("subject");
			
			ad.setSid(sid);
			ad.setFname(fname);
			ad.setLname(lname);
			ad.setErno(erno);
			ad.setCollege(college);
			ad.setYear(year);
			ad.setBranch(branch);
			ad.setSubject(subject);
			
			AttendanceData ad1 = AttendanceDao.getData(ad.getSid(),ad.getSubject());
			try {
				if(ad1.getPresent().equals("no"))
				{
					AttendanceDao.UpdateAbsentData(ad);
					response.sendRedirect("instructor-attendance.jsp");
				}
				else
				{
					AttendanceDao.UpdateAbsentData(ad);
					response.sendRedirect("instructor-attendance.jsp");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				AttendanceDao.PresentData(ad);
				response.sendRedirect("instructor-attendance.jsp");
			}			
			
		}
		
		else if(action.equalsIgnoreCase("Absent"))
		{
			AttendanceData ad = new AttendanceData();
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			int sid = Integer.parseInt(request.getParameter("sid"));
			String erno = request.getParameter("erno");
			String college = request.getParameter("college");
			int year = Integer.parseInt(request.getParameter("year"));
			String branch = request.getParameter("branch");
			String subject = request.getParameter("subject");
			
			ad.setSid(sid);
			ad.setFname(fname);
			ad.setLname(lname);
			ad.setErno(erno);
			ad.setCollege(college);
			ad.setYear(year);
			ad.setBranch(branch);
			ad.setSubject(subject);
			
			AttendanceData ad1 = AttendanceDao.getData(ad.getSid(),ad.getSubject());
			try {
				if(ad1.getAbsent().equals("no"))
				{
					AttendanceDao.UpdatePresentData(ad);
					response.sendRedirect("instructor-attendance.jsp");
				}
				else
				{
					AttendanceDao.UpdatePresentData(ad);
					response.sendRedirect("instructor-attendance.jsp");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				AttendanceDao.AbsentData(ad);
				response.sendRedirect("instructor-attendance.jsp");
			}
			
		}
	}

}
