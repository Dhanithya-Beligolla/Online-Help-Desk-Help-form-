package com.help;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FormDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String email) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from helpforms where email ='"+email+"' ";
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
	
	public static List<Form> getForm(String Email) {
		
		ArrayList<Form> form = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from helpforms where email='"+Email+"' ";
			rs = stmt.executeQuery(sql);
			
			/*if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}*/
			
			while (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String category = rs.getString(4);
				String subject = rs.getString(5);
				String description = rs.getString(6);
				
				Form f = new Form(id,name,email,category,subject,description);
				form.add(f);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return form;
		
	}
    
	
    
    public static boolean insertform(String name, String email, String category, String subject, String description) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into helpforms values (0,'"+name+"','"+email+"','"+category+"','"+subject+"','"+description+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
	public static boolean updateform(String id, String name, String email, String category, String subject,
			String description) {
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update helpforms set category='"+category+"',subject='"+subject+"',description='"+description+"'"
    				+ "where email='"+email+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
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
    
    public static List<Form> getFormDetails(String Email) {
    	
    	
    	
    	ArrayList<Form> form = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from helpforms where email='"+Email+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			String id = rs.getString(1);
    			String name = rs.getString(2);
    			String email1 = rs.getString(3);
    			String category = rs.getString(4);
    			String subject = rs.getString(5);
    			String description = rs.getString(6);
    			
    			Form f = new Form(id,name,email1,category,subject,description);
    			form.add(f);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return form;	
    }
    
    
    public static boolean deleteform(String id) {
    	
    	
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from helpforms where fid='"+id+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
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
