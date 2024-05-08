package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Exam;
import com.bean.ExamDetails;
import com.bean.ExamResponse;
import com.bean.InstructorData;
import com.bean.StudentData;
import com.util.CreateConnection;

public class ExamDao {
	
	public static void insertQuestion(Exam e)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "insert into exam (question,answer,option1,option2,option3,option4,date,college,year,subject,positivemarks,negativemarks,examtype) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getQuestion());
			pst.setString(2, e.getAnswer());
			pst.setString(3, e.getOption1());
			pst.setString(4, e.getOption2());
			pst.setString(5, e.getOption3());
			pst.setString(6, e.getOption4());
			pst.setString(7, e.getDatetime());
			pst.setString(8, e.getCollege());
			pst.setInt(9, e.getYear());
			pst.setString(10, e.getSubject());
			pst.setString(11, e.getPositivemarks());
			pst.setString(12, e.getNegativemarks());
			pst.setString(13, e.getExamtype());
			pst.executeUpdate();
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
	}
	
	public static List<Exam> getQuestion(InstructorData i)
	{
		List<Exam> list = new ArrayList<Exam>();
		Exam e1 = null;
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from exam where subject=? and college=? and year=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, i.getSubject());
			pst.setString(2, i.getCollege());
			pst.setInt(3, i.getYear());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				e1 = new Exam();
				e1.setId(rs.getInt(1));
				e1.setQuestion(rs.getString(2));
				e1.setAnswer(rs.getString(3));
				e1.setOption1(rs.getString(4));
				e1.setOption2(rs.getString(5));
				e1.setOption3(rs.getString(6));
				e1.setOption4(rs.getString(7));
				e1.setDatetime(rs.getString(8));
				e1.setCollege(rs.getString(9));
				e1.setYear(rs.getInt(10));
				e1.setSubject(rs.getString(11));
				e1.setPositivemarks(rs.getString(12));
				e1.setNegativemarks(rs.getString(13));
				e1.setExamtype(rs.getString(14));
				list.add(e1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Exam> getQuestion(ExamDetails e)
	{
		List<Exam> list = new ArrayList<Exam>();
		Exam e1 = null;
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from exam where subject=? and college=? and year=? and examtype=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getSubject());
			pst.setString(2, e.getCollege());
			pst.setInt(3, e.getYear());
			pst.setString(4, e.getExamtype());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				e1 = new Exam();
				e1.setId(rs.getInt(1));
				e1.setQuestion(rs.getString(2));
				e1.setAnswer(rs.getString(3));
				e1.setOption1(rs.getString(4));
				e1.setOption2(rs.getString(5));
				e1.setOption3(rs.getString(6));
				e1.setOption4(rs.getString(7));
				e1.setDatetime(rs.getString(8));
				e1.setCollege(rs.getString(9));
				e1.setYear(rs.getInt(10));
				e1.setSubject(rs.getString(11));
				e1.setPositivemarks(rs.getString(12));
				e1.setNegativemarks(rs.getString(13));
				e1.setExamtype(rs.getString(14));
				list.add(e1);
			}
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		return list;
	}
	
	public static void deleteQuestion(int id)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "delete from exam where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void deleteAllQuestion()
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "delete from exam";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void insertExam(ExamDetails e)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "insert into examdetail(subject,college,year,date,duration,maxmarks,examtype) values(?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getSubject());
			pst.setString(2, e.getCollege());
			pst.setInt(3, e.getYear());
			pst.setString(4, e.getDate());
			pst.setString(5, e.getDuration());
			pst.setInt(6, e.getMaxmarks());
			pst.setString(7, e.getExamtype());
			pst.executeUpdate();
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
	}
	
	public static ExamDetails checkExam(ExamDetails e)
	{
		ExamDetails e1 = new ExamDetails();
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from examdetail where subject=? and college=? and year=? and date=? and examtype=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getSubject());
			pst.setString(2, e.getCollege());
			pst.setInt(3, e.getYear());
			pst.setString(4, e.getDate());
			pst.setString(5, e.getExamtype());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				e1.setId(rs.getInt(1));
				e1.setSubject(rs.getString(2));
				e1.setCollege(rs.getString(3));
				e1.setYear(rs.getInt(4));
				e1.setDate(rs.getString(5));
				e1.setDuration(rs.getString(6));
				e1.setMaxmarks(rs.getInt(7));
				e1.setExamtype(rs.getString(8));
				e1.setEnable(rs.getString(9));
			}
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		return e1;
	}
	
	public static List<ExamDetails> getExamDetails(StudentData s)
	{
		List<ExamDetails> list = new ArrayList<ExamDetails>();
		ExamDetails e1 = null;
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from examdetail where college=? and year=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getCollege());
			pst.setInt(2, s.getYear());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				e1 = new ExamDetails();
				e1.setId(rs.getInt(1));
				e1.setSubject(rs.getString(2));
				e1.setCollege(rs.getString(3));
				e1.setYear(rs.getInt(4));
				e1.setDate(rs.getString(5));
				e1.setDuration(rs.getString(6));
				e1.setMaxmarks(rs.getInt(7));
				e1.setExamtype(rs.getString(8));
				e1.setEnable(rs.getString(9));
				list.add(e1);
			}
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		return list;
	}
	
	public static List<ExamDetails> getExamDetails(InstructorData i)
	{
		List<ExamDetails> list = new ArrayList<ExamDetails>();
		ExamDetails e1 = null;
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from examdetail where subject=? and college=? and year=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, i.getSubject());
			pst.setString(2, i.getCollege());
			pst.setInt(3, i.getYear());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				e1 = new ExamDetails();
				e1.setId(rs.getInt(1));
				e1.setSubject(rs.getString(2));
				e1.setCollege(rs.getString(3));
				e1.setYear(rs.getInt(4));
				e1.setDate(rs.getString(5));
				e1.setDuration(rs.getString(6));
				e1.setMaxmarks(rs.getInt(7));
				e1.setExamtype(rs.getString(8));
				e1.setEnable(rs.getString(9));
				list.add(e1);
			}
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		return list;
	}
	
	public static ExamDetails getDetailsbyId(int id)
	{
		ExamDetails e1 = null;
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from examdetail where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				e1 = new ExamDetails();
				e1.setId(rs.getInt(1));
				e1.setSubject(rs.getString(2));
				e1.setCollege(rs.getString(3));
				e1.setYear(rs.getInt(4));
				e1.setDate(rs.getString(5));
				e1.setDuration(rs.getString(6));
				e1.setMaxmarks(rs.getInt(7));
				e1.setExamtype(rs.getString(8));
				e1.setEnable(rs.getString(9));
			}
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		return e1;
	}
	
	public static void deleteExam(int id)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "delete from examdetail where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void enable(int id)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "update examdetail set enable=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "yes");
			pst.setInt(2, id);
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void disable(int id)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "update examdetail set enable=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "no");
			pst.setInt(2, id);
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void updateExam(ExamDetails e)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "update examdetail set subject=?,college=?,year=?,date=?,duration=?,maxmarks=?,examtype=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getSubject());
			pst.setString(2, e.getCollege());
			pst.setInt(3, e.getYear());
			pst.setString(4, e.getDate());
			pst.setString(5, e.getDuration());
			pst.setInt(6, e.getMaxmarks());
			pst.setString(7, e.getExamtype());
			pst.setInt(8, e.getId());
			pst.executeUpdate();
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
	}
	
	public static void insertStudentresponse(ExamResponse er)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "insert into examresponse (sid,qid,erno,college,year,subject,correctanswer,studentanswer,positivemarks,negativemarks,date,examtype) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, er.getSid());
			pst.setInt(2, er.getQid());
			pst.setString(3, er.getErno());
			pst.setString(4, er.getCollege());
			pst.setInt(5, er.getYear());
			pst.setString(6, er.getSubject());
			pst.setString(7, er.getCorrectanswer());
			pst.setString(8, er.getStudentanswer());
			pst.setInt(9, er.getPositivemarks());
			pst.setString(10, er.getNegativemarks());
			pst.setString(11, er.getDate());
			pst.setString(12, er.getExamtype());
			pst.executeUpdate();
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
	}
	
	public static ExamResponse checkResponse(int sid,int qid)
	{
		ExamResponse er = new ExamResponse();
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from examresponse where sid=? and qid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, sid);
			pst.setInt(2, qid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				er.setId(rs.getInt(1));
				er.setSid(rs.getInt(2));
				er.setQid(rs.getInt(3));
				er.setStudentanswer(rs.getString(9));
			}
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		return er;
	}
}
