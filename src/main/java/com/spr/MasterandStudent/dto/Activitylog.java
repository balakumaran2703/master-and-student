package com.spr.MasterandStudent.dto;

public class Activitylog {
	private int firstnumber;
	private String operator;
	private int secondnumber;
	private int totalcalculations;
	public int getFirstnumber() {
		return firstnumber;
	}
	public void setFirstnumber(int firstnumber) {
		this.firstnumber = firstnumber;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public int getSecondnumber() {
		return secondnumber;
	}
	public void setSecondnumber(int secondnumber) {
		this.secondnumber = secondnumber;
	}
	public int getTotalcalculations() {
		return totalcalculations;
	}
	public void setTotalcalculations(int totalcalculations) {
		this.totalcalculations = totalcalculations;
	}
	
}
