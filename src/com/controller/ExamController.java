package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Exam;
import com.bean.ExamDetails;
import com.bean.ExamResponse;
import com.dao.ExamDao;

/**
 * Servlet implementation class ExamController
 */
@WebServlet("/ExamController")
public class ExamController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String action = request.getParameter("action");
		
		if(action.equals("deleteallquestion"))
		{
			ExamDao.deleteAllQuestion();
			response.sendRedirect("instructor-addexam.jsp");
		}
		
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		
		if(action.equals("AddQuestion"))
		{
			String datetime = request.getParameter("datetime");
			String question = request.getParameter("question");
			String option1 = request.getParameter("option1");
			String option2 = request.getParameter("option2");
			String option3 = request.getParameter("option3");
			String option4 = request.getParameter("option4");
			String correct = request.getParameter("correct");
			String college = request.getParameter("college");
			int year = Integer.parseInt(request.getParameter("year"));
			String subject = request.getParameter("subject");
			String positivemarks = request.getParameter("positivemarks");
			String negmarks = request.getParameter("negativemarks");
			String negativemarks;
			String examtype = request.getParameter("examtype");
			if(negmarks.equals("minus1point5"))
			{
				negativemarks = "-1.5" ;
			}
			else if(negmarks.equals("minus1"))
			{
				negativemarks = "-1";
			}
			else if(negmarks.equals("minuspoint5"))
			{
				negativemarks = "-0.5";
			}
			else
			{
				negativemarks = "0";
			}
			Exam e = new Exam();
			e.setDatetime(datetime);
			e.setQuestion(question);
			e.setOption1(option1);
			e.setOption2(option2);
			e.setOption3(option3);
			e.setOption4(option4);
			e.setAnswer(request.getParameter(correct));
			e.setCollege(college);
			e.setYear(year);
			e.setSubject(subject);
			e.setPositivemarks(positivemarks);
			e.setNegativemarks(negativemarks);
			e.setExamtype(examtype);
			ExamDao.insertQuestion(e);
			response.sendRedirect("instructor-addexam.jsp");
					
		}
		
		
		if(action.equals("delete"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			ExamDao.deleteQuestion(id);
			response.sendRedirect("instructor-showexam.jsp");
		}
		
		if(action.equals("AddDetail"))
		{
			String datetime = request.getParameter("datetime");	
			String college = request.getParameter("college");
			int year = Integer.parseInt(request.getParameter("year"));
			String subject = request.getParameter("subject");
			String duration = request.getParameter("duration");
			int maxmarks = Integer.parseInt(request.getParameter("maxmarks"));
			String examtype = request.getParameter("examtype");
			ExamDetails e = new ExamDetails();
			e.setDate(datetime);
			e.setCollege(college.toLowerCase());
			e.setYear(year);
			e.setSubject(subject);
			e.setDuration(duration);
			e.setMaxmarks(maxmarks);
			e.setExamtype(examtype);
			ExamDetails e1 = ExamDao.checkExam(e);
			if(e1.getId()==0)
			{
				ExamDao.insertExam(e);
			}
			response.sendRedirect("instructor-addexam.jsp");
		}
		
		if(action.equals("deleteexamdetail"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			ExamDao.deleteExam(id);
			response.sendRedirect("instructor-showexamdetail.jsp");
		}
		
		if(action.equals("enable"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			ExamDao.enable(id);
			response.sendRedirect("instructor-showexamdetail.jsp");
		}
		
		if(action.equals("disable"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			ExamDao.disable(id);
			response.sendRedirect("instructor-showexamdetail.jsp");
		}
		
		if(action.equals("UpdateDetail"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			String datetime = request.getParameter("datetime");	
			String college = request.getParameter("college");
			int year = Integer.parseInt(request.getParameter("year"));
			String subject = request.getParameter("subject");
			String duration = request.getParameter("duration");
			int maxmarks = Integer.parseInt(request.getParameter("maxmarks"));
			String examtype = request.getParameter("examtype");
			ExamDetails e = new ExamDetails();
			e.setId(id);
			e.setDate(datetime);
			e.setCollege(college.toLowerCase());
			e.setYear(year);
			e.setSubject(subject);
			e.setDuration(duration);
			e.setMaxmarks(maxmarks);
			e.setExamtype(examtype);
			ExamDao.updateExam(e);
			response.sendRedirect("instructor-showexamdetail.jsp");
		}
		
		if(action.equals("startexam"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			ExamDetails ed = ExamDao.getDetailsbyId(id);
			HttpSession session = request.getSession();
			session.setAttribute("ed", ed);
			response.sendRedirect("student-writeexam.jsp");
		}
		
		if(action.equals("responseanswer"))
		{	
			int sid = Integer.parseInt(request.getParameter("sid"));
			int qid = Integer.parseInt(request.getParameter("qid"));
			String erno = request.getParameter("erno");
			String college = request.getParameter("college");
			int year = Integer.parseInt(request.getParameter("year"));
			String subject = request.getParameter("subject");
			String correctanswer = request.getParameter("correctanswer");
			String studentanswer = request.getParameter("studentanswer");
			int positivemarks = Integer.parseInt(request.getParameter("positivemarks"));
			String negativemarks = request.getParameter("negativemarks");
			String date = request.getParameter("date");
			String examtype = request.getParameter("examtype");
			ExamResponse er = new ExamResponse();
			er.setSid(sid);
			er.setQid(qid);
			er.setErno(erno);
			er.setCollege(college);
			er.setYear(year);
			er.setSubject(subject);
			er.setCorrectanswer(correctanswer);
			er.setStudentanswer(studentanswer);
			er.setPositivemarks(positivemarks);
			er.setNegativemarks(negativemarks);
			er.setDate(date);
			er.setExamtype(examtype);
			ExamDao.insertStudentresponse(er);
			response.sendRedirect("student-writeexam.jsp");
			
		}
	}

}
