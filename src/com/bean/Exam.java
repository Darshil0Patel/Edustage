package com.bean;

public class Exam {
	private int id;
	private String question;
	private String answer;
	private String datetime;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String college;
	private String subject;
	private int year;
	private String positivemarks;
	private String negativemarks;
	private String examtype;
	
	public String getExamtype() {
		return examtype;
	}
	public void setExamtype(String examtype) {
		this.examtype = examtype;
	}
	public void setPositivemarks(String positivemarks) {
		this.positivemarks = positivemarks;
	}
	public void setNegativemarks(String negativemarks) {
		this.negativemarks = negativemarks;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getPositivemarks() {
		return positivemarks;
	}
	public String getNegativemarks() {
		return negativemarks;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	@Override
	public String toString() {
		return "Exam [id=" + id + ", question=" + question + ", answer=" + answer + ", datetime=" + datetime
				+ ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4
				+ ", college=" + college + ", subject=" + subject + ", year=" + year + ", positivemarks="
				+ positivemarks + ", negativemarks=" + negativemarks + ", examtype=" + examtype + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
}
