package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.bean.AdminData;
import com.bean.InstructorData;
import com.bean.StudentData;
import com.util.CreateConnection;

public class AdminDao {

	public static AdminData getData(AdminData ad1) {
		AdminData ad = null;

		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from admin where name=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, ad1.getName());
			pst.setString(2, ad1.getPassword());
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				ad = new AdminData();
				ad.setId(rs.getInt(1));
				ad.setName(rs.getString(2));
				ad.setPassword(rs.getString(3));

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return ad;
	}

	public static void StudentRegister(StudentData sd) {
		Connection conn = CreateConnection.GetConnection();
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

	public static void InstructorRegister(InstructorData ind) {
		Connection conn = CreateConnection.GetConnection();
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

	public static List<StudentData> GetStudents() {
		List<StudentData> list = new ArrayList<StudentData>();
		StudentData sd = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from student";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
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
				list.add(sd);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	public static StudentData GetStudentsById(int id) {
		StudentData sd = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from student where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
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

	public static InstructorData GetInstructorsById(int id) {
		InstructorData ind = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from instructor where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
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

	public static List<InstructorData> GetInstructors() {
		List<InstructorData> list = new ArrayList<InstructorData>();
		InstructorData ind = null;
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "select * from instructor";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
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
				list.add(ind);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	public static void DeleteStudent(StudentData s) {
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "delete from student where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, s.getId());
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static void DeleteInstructor(InstructorData i) {
		try {
			Connection conn = CreateConnection.GetConnection();
			String sql = "delete from instructor where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, i.getId());
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static void StudentUpdate(StudentData sd) {
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

	public static void InstructorUpdate(InstructorData ind) {
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
}
