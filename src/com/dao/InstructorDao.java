package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.InstructorData;
import com.bean.StudentData;
import com.util.CreateConnection;

public class InstructorDao {

	public static void InstructorRegister(InstructorData ind)
	{
		Connection conn = CreateConnection.GetConnection() ;
		try {
			String sql = "insert into instructor (fname,lname,uid,email,contact,college,subject,password,year) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, ind.getFname());
			pst.setString(2, ind.getLname());
			pst.setString(3, ind.getUid());
			pst.setString(4, ind.getEmail());
			pst.setString(5, ind.getContact());
			pst.setString(6, ind.getCollege());
			pst.setString(7, ind.getSubject());
			pst.setString(8, ind.getPassword());
			pst.setInt(9, ind.getYear());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static InstructorData InstructorLogin(InstructorData i)
	{
		InstructorData ind = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from instructor where uid=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, i.getUid());
			pst.setString(2, i.getPassword());
			ResultSet rs = pst.executeQuery();
			
			while(rs.next())
			{
				ind = new InstructorData();
				ind.setId(rs.getInt(1));
				ind.setFname(rs.getString(2));
				ind.setLname(rs.getString(3));
				ind.setUid(rs.getString(4));
				ind.setEmail(rs.getString(5));
				ind.setContact(rs.getString(6));
				ind.setCollege(rs.getString(7));
				ind.setSubject(rs.getString(8));
				ind.setPassword(rs.getString(9));
				ind.setYear(rs.getInt(10));
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return ind;
	}
	
	public static void InstructorUpdate(InstructorData ind)
	{
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "update instructor set fname=?,lname=?,uid=?,email=?,contact=?,college=?,subject=?,password=?,year=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, ind.getFname());
			pst.setString(2, ind.getLname());
			pst.setString(3, ind.getUid());
			pst.setString(4, ind.getEmail());
			pst.setString(5, ind.getContact());
			pst.setString(6, ind.getCollege());
			pst.setString(7, ind.getSubject());
			pst.setString(8, ind.getPassword());
			pst.setInt(9, ind.getYear());
			pst.setInt(10, ind.getId());
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public static void InstructorVideo(InstructorData ind)
	{
		Connection conn = CreateConnection.GetConnection() ;
		try {
			String sql = "insert into video (fname,lname,uid,email,contact,college,subject,password,videolink,year) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, ind.getFname());
			pst.setString(2, ind.getLname());
			pst.setString(3, ind.getUid());
			pst.setString(4, ind.getEmail());
			pst.setString(5, ind.getContact());
			pst.setString(6, ind.getCollege());
			pst.setString(7, ind.getSubject());
			pst.setString(8, ind.getPassword());
			pst.setString(9, ind.getVideo());
			pst.setInt(10, ind.getYear());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static List<StudentData> StudentData1(InstructorData ind)
	{
		List<StudentData> list = new ArrayList<StudentData>();
		StudentData s = null;
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from student where year=? and college=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, ind.getYear());
			pst.setString(2, ind.getCollege());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				s = new StudentData();
				s.setId(rs.getInt(1));
				s.setFname(rs.getString(2));
				s.setLname(rs.getString(3));
				s.setErno(rs.getString(4));
				s.setEmail(rs.getString(5));
				s.setContact(rs.getString(6));
				s.setCollege(rs.getString(7));
				s.setYear(rs.getInt(8));
				s.setBranch(rs.getString(9));
				s.setPassword(rs.getString(10));
				list.add(s);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}

}
