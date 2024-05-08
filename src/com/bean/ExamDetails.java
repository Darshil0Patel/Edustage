package com.bean;

public class ExamDetails {
	private int id;
	private String subject;
	private String college;
	private int year;
	private String date;
	private String duration;
	private int maxmarks;
	private String examtype;
	private String enable;
	public String getEnable() {
		return enable;
	}
	public void setEnable(String enable) {
		this.enable = enable;
	}
	public String getExamtype() {
		return examtype;
	}
	public void setExamtype(String examtype) {
		this.examtype = examtype;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public int getMaxmarks() {
		return maxmarks;
	}
	public void setMaxmarks(int maxmarks) {
		this.maxmarks = maxmarks;
	}
	@Override
	public String toString() {
		return "ExamDetails [id=" + id + ", subject=" + subject + ", college=" + college + ", year=" + year + ", date="
				+ date + ", duration=" + duration + ", maxmarks=" + maxmarks + ", examtype=" + examtype + ", enable="
				+ enable + "]";
	}
	
}
