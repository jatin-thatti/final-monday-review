package dao;

import java.sql.*;

import bean.Customer;

public class EmployeeDao {
	
	static String url = "jdbc:sqlite:C:\\Users\\Jatin\\MySQLiteDB";
	static Connection con = null;
	
	public static Connection getConnection() {
       
        try {
            Class.forName("org.sqlite.JDBC");
            con = DriverManager.getConnection(url);
            
        }
        catch (Exception e) {
            // TODO: handle exception
            System.out.println(e);
        }
        return con;
    }
	
	public static boolean authenticateUser(int userId,String password){
		boolean isPresent = false;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(String.format("select * from Employee where userId =%d",userId));
			ResultSet rs = ps.executeQuery();
			rs.next();
			
			if(rs!=null&&rs.getString("password").equals(password)) {
				isPresent=true;
				System.out.println(rs);
			}
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isPresent;
		
	}
	
	
	
	

}
