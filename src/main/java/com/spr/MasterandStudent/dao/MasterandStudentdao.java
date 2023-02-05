package com.spr.MasterandStudent.dao;

import java.util.ArrayList;

import com.spr.MasterandStudent.dto.Activitylog;
import com.spr.MasterandStudent.dto.MasterandStudent;

public interface MasterandStudentdao {
	String DB_URL="jdbc:mysql://localhost:3306/ms_db?user=root&password=root";
	String DRIVER_CLASS="com.mysql.cj.jdbc.Driver";
	public int addnumbers(int a,int b);
	public int substract(int a, int b);
	public int multiplications(int a,int b);
	public int division(int a,int b);
	public boolean saveMasterorStudent(MasterandStudent m);
	public ArrayList<Activitylog> allactivitylog();
	public MasterandStudent loginvalidate(String Email,String password);
	public boolean saveAddactActivitylog(Activitylog a);
}
