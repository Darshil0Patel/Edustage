package com.bean;

public class ExamResponse {
	private int id;
	private int sid;
	private int qid;
	private String erno;
	private String college;
	private int year;
	private String subject;
	private String correctanswer;
	private String studentanswer;
	private int positivemarks;
	private String negativemarks;
	private String date;
	private String examtype;
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
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getErno() {
		return erno;
	}
	public void setErno(String erno) {
		this.erno = erno;
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getCorrectanswer() {
		return correctanswer;
	}
	public void setCorrectanswer(String correctanswer) {
		this.correctanswer = correctanswer;
	}
	public String getStudentanswer() {
		return studentanswer;
	}
	public void setStudentanswer(String studentanswer) {
		this.studentanswer = studentanswer;
	}
	public int getPositivemarks() {
		return positivemarks;
	}
	public void setPositivemarks(int positivemarks) {
		this.positivemarks = positivemarks;
	}
	public String getNegativemarks() {
		return negativemarks;
	}
	public void setNegativemarks(String negativemarks) {
		this.negativemarks = negativemarks;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "ExamResponse [id=" + id + ", sid=" + sid + ", qid=" + qid + ", erno=" + erno + ", college=" + college
				+ ", year=" + year + ", subject=" + subject + ", correctanswer=" + correctanswer + ", studentanswer="
				+ studentanswer + ", positivemarks=" + positivemarks + ", negativemarks=" + negativemarks + ", date="
				+ date + ", examtype=" + examtype + "]";
	}
	
	
}
