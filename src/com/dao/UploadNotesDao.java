package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.FilesData;
import com.util.CreateConnection;

public class UploadNotesDao {
	
	public static void insertFile(FilesData fd)
	{
		Connection conn = CreateConnection.GetConnection();
		try {
			String sql = "insert into file (instructorid,name,filename,path,subject,year,college) values(?,?,?,?,?,?,?)";
			PreparedStatement pst =conn.prepareStatement(sql);
			pst.setInt(1, fd.getInstructorid());
			pst.setString(2, fd.getName());
			pst.setString(3, fd.getFilename());
			pst.setString(4, fd.getPath());
			pst.setString(5, fd.getSubject());
			pst.setInt(6, fd.getYear());
			pst.setString(7, fd.getCollege());
			pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
