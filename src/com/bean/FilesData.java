package com.bean;

public class FilesData {
	
	private int id;
	private int instructorid;
	private String name;
	private String filename;
	private String path;
	private String subject;
	private String college;
	private int year;
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getInstructorid() {
		return instructorid;
	}
	public void setInstructorid(int instructorid) {
		this.instructorid = instructorid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "FilesData [id=" + id + ", instructorid=" + instructorid + ", name=" + name + ", filename=" + filename
				+ ", path=" + path + ", subject=" + subject + ", college=" + college + ", year=" + year + "]";
	}
	
}
