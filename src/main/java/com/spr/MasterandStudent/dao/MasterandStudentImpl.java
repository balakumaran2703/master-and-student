package com.spr.MasterandStudent.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.spr.MasterandStudent.dto.Activitylog;
import com.spr.MasterandStudent.dto.MasterandStudent;



public class MasterandStudentImpl implements MasterandStudentdao{
	
	public int addnumbers(int a, int b) {
		return a+b;
	}

	public int substract(int a, int b) {
		return a-b;
	}

	public int multiplications(int a, int b) {
		return a*b;
	}

	public int division(int a, int b) {
		return a/b;
	}

	public boolean saveMasterorStudent(MasterandStudent m) {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="INSERT INTO masterandstudent VALUES(?,?,?,?,?)";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, m.getMid());
			pstmt.setString(2, m.getName());
			pstmt.setString(3, m.getDesignation());
			pstmt.setString(4, m.getEmailid());
			pstmt.setString(5, m.getPassword());
			int rowsaffected=pstmt.executeUpdate();
			return (rowsaffected !=0);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if (con!=null) {
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}if (pstmt!=null) {
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
		return false;
	}

	public ArrayList<Activitylog> allactivitylog() {
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM activitylog";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			ArrayList<Activitylog> res=new ArrayList<>();
			while(rs.next()) {
				int first_number=Integer.parseInt(rs.getString(1));
				String operator=rs.getString(2);
				int second_number=Integer.parseInt(rs.getString(3));
				int total=Integer.parseInt(rs.getString(4));
				Activitylog a=new Activitylog();
				a.setFirstnumber(first_number);
				a.setOperator(operator);
				a.setSecondnumber(second_number);
				a.setTotalcalculations(total);
				res.add(a);
			}
			return res;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (stmt!=null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public MasterandStudent loginvalidate(String email, String password) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="SELECT * FROM masterandstudent WHERE emailid=? AND password=?";
			pstmt=con.prepareStatement(query); 
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				MasterandStudent ms=new MasterandStudent();
				ms.setMid(rs.getInt(1));
				ms.setName(rs.getString(2));
				ms.setDesignation(rs.getString(3));
				ms.setEmailid(rs.getString(4));
				 return ms;
			} else {
				return null;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public boolean saveAddactActivitylog(Activitylog a) {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			String query="INSERT INTO activitylog VALUES(?,?,?,?)";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, a.getFirstnumber());
			pstmt.setInt(3, a.getSecondnumber());
			pstmt.setString(2, a.getOperator());
			pstmt.setInt(4, a.getTotalcalculations());
			int rowsaffected=pstmt.executeUpdate();
			return (rowsaffected !=0);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if (con!=null) {
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}if (pstmt!=null) {
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			return false;
	}

}
