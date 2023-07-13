package com.vehicle;

import java.sql.Connection;

import java.sql.ResultSet;

//import java.sql.DriverManager;

//import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
//import java.util.List;
import java.util.List;

import com.admin.DBConnect;
//import com.admin.admin;
//import com.admin.admin;
//import com.admin.admin;

public class vehicleDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertVehicle(String vNo, String vType, String vChassisNo, String vSeatCap, String vOwnerName, String vOwnerNIC, String vOwnerAddress, String vOwnerPhone) {
		
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Insert into vehicle values('"+vNo+"','"+vType+"','"+vChassisNo+"','"+vSeatCap+"','"+vOwnerName+"','"+vOwnerNIC+"','"+vOwnerAddress+"','"+vOwnerPhone+"')";


			
			int ret = stmt.executeUpdate(sql);//if 1 return successful, 0 return unsuccess
		
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

	
	
	//manage vehicle part
	public ArrayList<vehicle> getVehicles()  {
		 
        ArrayList<vehicle> Vehicles = new ArrayList<vehicle>();
        try{
        	con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from vehicle ";
			rs = stmt.executeQuery(sql);

            
            while(rs.next()){
                String vNo = rs.getString("vNo");
                String vType = rs.getString("vType");
                String vChassisNo = rs.getString("vChassisNo");
                String vSeatCap = rs.getString("vSeatCap");
                String vOwnerName = rs.getString("vOwnerName");
                String vOwnerNIC = rs.getString("vOwnerNIC");
                String vOwnerAddress = rs.getString("vOwnerAddress");
                String vOwnerPhone = rs.getString("vOwnerPhone");
                vehicle temp = new vehicle(vNo, vType, vChassisNo, vSeatCap,  vOwnerName,  vOwnerNIC, vOwnerAddress, vOwnerPhone);
                Vehicles.add(temp);
        }
        }catch (Exception e){
            e.printStackTrace();
        }
        return Vehicles;
    }
	
	//Retrieve
		public static List<vehicle> getVehicledetails(String vNo1){
			
			///int convertID = Integer.parseInt(ID);
			
			ArrayList<vehicle> veh = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql ="select * from vehicle where vNo = '"+vNo1+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String vNo = rs.getString(1);
					String vType = rs.getString(2);
					String vChassisNo = rs.getString(3);
					String vSeatCap = rs.getString(4);
					String vOwnerName = rs.getString(5);
					String vOwnerNIC = rs.getString(6);
					String vOwnerAddress = rs.getString(7);
					String vOwnerPhone = rs.getString(8);
					
					vehicle v1 = new vehicle(vNo, vType, vChassisNo, vSeatCap,  vOwnerName,  vOwnerNIC, vOwnerAddress, vOwnerPhone); 
					
					veh.add(v1);
				}
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return veh;
		}
	
	//Delete
	
	 public static boolean deleteVehicle(String vNo) {
	    	
		 //int convertID = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from vehicle where vNo='"+vNo+"'";
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
	 //new
	 public static boolean validate(String vNo) {
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from vehicle where vNo='"+vNo+"'";
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
	 
	 
	 public static List<vehicle> getVehicle(String vNo) {
			
			ArrayList<vehicle> veh = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from vehicle where vNo='"+vNo+"'";
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					String vNo1 = rs.getString(1);
					String vType = rs.getString(2);
					String vChassisNo = rs.getString(3);
					String vSeatCap = rs.getString(4);
					String vOwnerName = rs.getString(5);
					String vOwnerNIC = rs.getString(6);
					String vOwnerAddress = rs.getString(7);
					String vOwnerPhone = rs.getString(8);
					
					vehicle v1 = new vehicle(vNo1, vType, vChassisNo, vSeatCap,  vOwnerName,  vOwnerNIC, vOwnerAddress, vOwnerPhone); 
				
				veh.add(v1);
				}
				
			} catch (Exception e) {
				
			}
			
			return veh;
		}
	
	
	
}
