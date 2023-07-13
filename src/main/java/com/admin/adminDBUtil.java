package com.admin;

import java.sql.Connection;


//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class adminDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;


public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where aUsername='"+username+"' and aPassword='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

public static List<admin> getAdmin(String userName) {
	
	ArrayList<admin> adm = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from admin where aUsername='"+userName+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String wemail = rs.getString(4);
			String phone = rs.getString(5);
			String wHrs = rs.getString(6);
			String aUsername = rs.getString(7);
			String aPassword = rs.getString(8);
			
		admin a1 = new admin(id,name,email,wemail,phone,wHrs,aUsername,aPassword);
		
		adm.add(a1);
		}
		
	} catch (Exception e) {
		
	}
	
	return adm;
}
	
//Update
	public static boolean updateAdmin(String id, String name, String email,String phone,String userName, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Update admin set aName = '"+name+"',aEmail = '"+email+"',aPhone = '"+phone+"',aUsername = '"+userName+"',aPassword = '"+password+"'"
					+ "where aID='"+id+"'";
			
			int ret = stmt.executeUpdate(sql);
			
			if (ret>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	
	//Retrieve
	public static List<admin> getAdmindetails(String ID){
		
		int convertID = Integer.parseInt(ID);
		
		ArrayList<admin> adm = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="select * from admin where aID = '"+convertID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String wemail = rs.getString(4);
				String phone = rs.getString(5);
				String wHrs = rs.getString(6);
				String aUsername = rs.getString(7);
				String aPassword = rs.getString(8);
				
			admin a1 = new admin(id,name,email,wemail,phone,wHrs,aUsername,aPassword);
				
				adm.add(a1);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return adm;
	}
	
	//Delete
	
	 public static boolean deleteAdmin(String id) {
	    	
		 int convertID = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from admin where aID='"+convertID+"'";
	    		int ret = stmt.executeUpdate(sql);
	    		
	    		if (ret > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	
}
