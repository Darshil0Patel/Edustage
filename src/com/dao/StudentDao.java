package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.FilesData;
import com.bean.StudentData;
import com.bean.VideoData;
import com.util.CreateConnection;

public class StudentDao {
	
	public static void StudentRegister(StudentData sd)
	{
		Connection conn = CreateConnection.GetConnection() ;
		try {
			String sql = "insert into student (fname,lname,erno,email,contact,college,year,branch,password) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, sd.getFname());
			pst.setString(2, sd.getLname());
			pst.setString(3, sd.getErno());
			pst.setString(4, sd.getEmail());
			pst.setString(5, sd.getContact());
			pst.setString(6, sd.getCollege());
			pst.setInt(7, sd.getYear());
			pst.setString(8, sd.getBranch());
			pst.setString(9, sd.getPassword());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static StudentData StudentLogin(StudentData s)
	{
		StudentData sd = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from student where erno=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getErno());
			pst.setString(2, s.getPassword());
			ResultSet rs = pst.executeQuery();
			
			while(rs.next())
			{
				sd = new StudentData();
				sd.setId(rs.getInt(1));
				sd.setFname(rs.getString(2));
				sd.setLname(rs.getString(3));
				sd.setErno(rs.getString(4));
				sd.setEmail(rs.getString(5));
				sd.setContact(rs.getString(6));
				sd.setCollege(rs.getString(7));
				sd.setYear(rs.getInt(8));
				sd.setBranch(rs.getString(9));
				sd.setPassword(rs.getString(10));
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return sd;
	}
	
	public static void StudentUpdate(StudentData sd)
	{
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "update student set fname=?,lname=?,erno=?,email=?,contact=?,college=?,year=?,branch=?,password=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, sd.getFname());
			pst.setString(2, sd.getLname());
			pst.setString(3, sd.getErno());
			pst.setString(4, sd.getEmail());
			pst.setString(5, sd.getContact());
			pst.setString(6, sd.getCollege());
			pst.setInt(7, sd.getYear());
			pst.setString(8, sd.getBranch());
			pst.setString(9, sd.getPassword());
			pst.setInt(10, sd.getId());
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public static List<VideoData> GetCnVideos(StudentData s)
	{
		List<VideoData> list = new ArrayList<VideoData>();
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from video where subject=? and year=? and college=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "CN");
			pst.setInt(2, s.getYear());
			pst.setString(3, s.getCollege());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				VideoData vd = new VideoData();
				vd.setUid(rs.getString(4));
				vd.setSubject(rs.getString(8));
				vd.setVideo(rs.getString(10));
				list.add(vd);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public static List<FilesData> GetCnNotes(StudentData s)
	{
		List<FilesData> list = new ArrayList<FilesData>();
		FilesData fd = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from file where subject=? and year=? and college=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "CN");
			pst.setInt(2, s.getYear());
			pst.setString(3, s.getCollege());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				fd = new FilesData();
				fd.setId(rs.getInt(1));
				fd.setInstructorid(rs.getInt(2));
				fd.setName(rs.getString(3));
				fd.setFilename(rs.getString(4));
				fd.setPath(rs.getString(5));
				fd.setSubject(rs.getString(6));
				fd.setYear(rs.getInt(7));
				fd.setCollege(rs.getString(8));
				list.add(fd);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public static List<VideoData> GetAdaVideos(StudentData s)
	{
		List<VideoData> list = new ArrayList<VideoData>();
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from video where subject=? and year=? and college=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "ADA");
			pst.setInt(2, s.getYear());
			pst.setString(3, s.getCollege());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				VideoData vd = new VideoData();
				vd.setUid(rs.getString(4));
				vd.setSubject(rs.getString(8));
				vd.setVideo(rs.getString(10));
				list.add(vd);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public static List<FilesData> GetAdaNotes(StudentData s)
	{
		List<FilesData> list = new ArrayList<FilesData>();
		FilesData fd = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from file where subject=? and year=? and college=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "ADA");
			pst.setInt(2, s.getYear());
			pst.setString(3, s.getCollege());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				fd = new FilesData();
				fd.setId(rs.getInt(1));
				fd.setInstructorid(rs.getInt(2));
				fd.setName(rs.getString(3));
				fd.setFilename(rs.getString(4));
				fd.setPath(rs.getString(5));
				fd.setSubject(rs.getString(6));
				fd.setYear(rs.getInt(7));
				fd.setCollege(rs.getString(8));
				list.add(fd);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public static List<VideoData> GetSeVideos(StudentData s)
	{
		List<VideoData> list = new ArrayList<VideoData>();
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from video where subject=? and year=? and college=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "SE");
			pst.setInt(2, s.getYear());
			pst.setString(3, s.getCollege());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				VideoData vd = new VideoData();
				vd.setUid(rs.getString(4));
				vd.setSubject(rs.getString(8));
				vd.setVideo(rs.getString(10));
				list.add(vd);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public static List<FilesData> GetSeNotes(StudentData s)
	{
		List<FilesData> list = new ArrayList<FilesData>();
		FilesData fd = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from file where subject=? and year=? and college=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, "SE");
			pst.setInt(2, s.getYear());
			pst.setString(3, s.getCollege());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				fd = new FilesData();
				fd.setId(rs.getInt(1));
				fd.setInstructorid(rs.getInt(2));
				fd.setName(rs.getString(3));
				fd.setFilename(rs.getString(4));
				fd.setPath(rs.getString(5));
				fd.setSubject(rs.getString(6));
				fd.setYear(rs.getInt(7));
				fd.setCollege(rs.getString(8));
				list.add(fd);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
		
	}
}
