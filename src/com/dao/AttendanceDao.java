package com.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import com.bean.AttendanceData;
import com.bean.InstructorData;
import com.bean.StudentData;
import com.util.CreateConnection;

public class AttendanceDao {

	public static void PresentData(AttendanceData ad)
	{

		LocalDate ld = LocalDate.now();
		Date d = Date.valueOf(ld);

		LocalTime lt = LocalTime.now();
		Time t = Time.valueOf(lt);
		
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "insert into attendance (date,time,fname,lname,sid,erno,college,year,branch,subject,present,absent) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setDate(1, d);
			pst.setTime(2, t);
			pst.setString(3, ad.getFname());
			pst.setString(4, ad.getLname());
			pst.setInt(5, ad.getSid());
			pst.setString(6, ad.getErno());
			pst.setString(7, ad.getCollege());
			pst.setInt(8, ad.getYear());
			pst.setString(9, ad.getBranch());
			pst.setString(10, ad.getSubject());
			pst.setString(11, "yes");
			pst.setString(12, "no");
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void AbsentData(AttendanceData ad)
	{
		LocalDate ld = LocalDate.now();
		Date d = Date.valueOf(ld);

		LocalTime lt = LocalTime.now();
		Time t = Time.valueOf(lt);
		
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "insert into attendance (date,time,fname,lname,sid,erno,college,year,branch,subject,present,absent) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setDate(1, d);
			pst.setTime(2, t);
			pst.setString(3, ad.getFname());
			pst.setString(4, ad.getLname());
			pst.setInt(5, ad.getSid());
			pst.setString(6, ad.getErno());
			pst.setString(7, ad.getCollege());
			pst.setInt(8, ad.getYear());
			pst.setString(9, ad.getBranch());
			pst.setString(10, ad.getSubject());
			pst.setString(11, "no");
			pst.setString(12, "yes");
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static void UpdatePresentData(AttendanceData ad)
	{
		LocalDate ld = LocalDate.now();
		Date d = Date.valueOf(ld);

		LocalTime lt = LocalTime.now();
		Time t = Time.valueOf(lt);
		
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "update attendance set date=?,time=?,fname=?,lname=?,erno=?,college=?,year=?,branch=?,present=?,absent=? where sid=? and subject=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setDate(1, d);
			pst.setTime(2, t);
			pst.setString(3, ad.getFname());
			pst.setString(4, ad.getLname());
			pst.setString(5, ad.getErno());
			pst.setString(6, ad.getCollege());
			pst.setInt(7, ad.getYear());
			pst.setString(8, ad.getBranch());
			pst.setString(9, "no");
			pst.setString(10, "yes");
			pst.setInt(11, ad.getSid());
			pst.setString(12, ad.getSubject());
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void UpdateAbsentData(AttendanceData ad)
	{
		LocalDate ld = LocalDate.now();
		Date d = Date.valueOf(ld);

		LocalTime lt = LocalTime.now();
		Time t = Time.valueOf(lt);
		
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "update attendance set date=?,time=?,fname=?,lname=?,erno=?,college=?,year=?,branch=?,present=?,absent=? where sid=? and subject=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setDate(1, d);
			pst.setTime(2, t);
			pst.setString(3, ad.getFname());
			pst.setString(4, ad.getLname());
			pst.setString(5, ad.getErno());
			pst.setString(6, ad.getCollege());
			pst.setInt(7, ad.getYear());
			pst.setString(8, ad.getBranch());
			pst.setString(9, "yes");
			pst.setString(10, "no");
			pst.setInt(11, ad.getSid());
			pst.setString(12, ad.getSubject());
			pst.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static AttendanceData getData(int sid,String subject)
	{
		AttendanceData a = null;
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from attendance where sid=? and subject=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, sid);
			pst.setString(2, subject);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				a = new AttendanceData();
				a.setId(rs.getInt(1));
				a.setDate(rs.getString(2));
				a.setTime(rs.getString(3));
				a.setFname(rs.getString(4));
				a.setLname(rs.getString(5));
				a.setSid(rs.getInt(6));
				a.setErno(rs.getString(7));
				a.setCollege(rs.getString(8));
				a.setYear(rs.getInt(9));
				a.setBranch(rs.getString(10));
				a.setSubject(rs.getString(11));
				a.setPresent(rs.getString(12));
				a.setAbsent(rs.getString(13));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static List<AttendanceData> ListOfStudent(InstructorData ind)
	{
		AttendanceData a = null;
		List<AttendanceData> list = new ArrayList<AttendanceData>();
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from attendance where college=? and year=? and subject=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, ind.getCollege());
			pst.setInt(2, ind.getYear());
			pst.setString(3, ind.getSubject());
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				a = new AttendanceData();
				a.setId(rs.getInt(1));
				a.setDate(rs.getString(2));
				a.setTime(rs.getString(3));
				a.setFname(rs.getString(4));
				a.setLname(rs.getString(5));
				a.setSid(rs.getInt(6));
				a.setErno(rs.getString(7));
				a.setCollege(rs.getString(8));
				a.setYear(rs.getInt(9));
				a.setBranch(rs.getString(10));
				a.setSubject(rs.getString(11));
				a.setPresent(rs.getString(12));
				a.setAbsent(rs.getString(13));
				list.add(a);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<AttendanceData> ListOfStudent(int sid)
	{
		AttendanceData a = null;
		List<AttendanceData> list = new ArrayList<AttendanceData>();
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "select * from attendance where sid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, sid);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				a = new AttendanceData();
				a.setId(rs.getInt(1));
				a.setDate(rs.getString(2));
				a.setTime(rs.getString(3));
				a.setFname(rs.getString(4));
				a.setLname(rs.getString(5));
				a.setSid(rs.getInt(6));
				a.setErno(rs.getString(7));
				a.setCollege(rs.getString(8));
				a.setYear(rs.getInt(9));
				a.setBranch(rs.getString(10));
				a.setSubject(rs.getString(11));
				a.setPresent(rs.getString(12));
				a.setAbsent(rs.getString(13));
				list.add(a);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
}
