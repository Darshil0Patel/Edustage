package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.FilesData;
import com.dao.UploadNotesDao;

/**
 * Servlet implementation class UploadController
 */
@WebServlet("/UploadController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10,
maxFileSize = 1024 * 1024 * 1000,
maxRequestSize = 1024 * 1024 * 1000)
public class UploadController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			FilesData fd = new FilesData();
			int instructorid = Integer.parseInt(request.getParameter("id"));
//			System.out.println(instructorid);
			String name = request.getParameter("name");
//			System.out.println(name);
			String subject= request.getParameter("subject");
			String college = request.getParameter("college");
			int year = Integer.parseInt(request.getParameter("year"));
			
			String FolderName = "files";
			Part part = request.getPart("filename");
			String filename = part.getSubmittedFileName();
			String uploadPath = "C:\\Users\\HP\\eclipse-workspace\\EducationSite\\WebContent\\" + FolderName;
//			System.out.println(uploadPath);
			File dir = new File(uploadPath);
			if (!dir.exists()) {
				dir.mkdirs();
			}

			InputStream is = part.getInputStream();
			Files.copy(is, Paths.get(uploadPath + File.separator + filename), StandardCopyOption.REPLACE_EXISTING);
			
			fd.setInstructorid(instructorid);
			fd.setName(name);
			fd.setFilename(filename);
			fd.setPath(uploadPath);
			fd.setCollege(college);
			fd.setSubject(subject);
			fd.setYear(year);
			
			UploadNotesDao.insertFile(fd);
			
			response.sendRedirect("instructor-notes.jsp");

	}

}
