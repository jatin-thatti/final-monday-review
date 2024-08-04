

package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Customer;
public class CustomerDao {
	
		static String url = "jdbc:sqlite:C:\\Users\\Jatin\\MySQLiteDB";
	    
	    public static Connection getConnection() {
	        Connection con = null;
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
	    
	    
	    
	    
	    public static int save(Customer s) throws SQLException {
	        
	        int status = 0;
	        Connection con=null;
	        PreparedStatement ps=null;
	        try {
	            
	             con = getConnection();
	             ps = con.prepareStatement("insert into Customer values(?,?,?,?,?,?,?,?)");
	            ps.setString(1, s.getFirstName());
	            ps.setString(2, s.getLastName());
	            ps.setString(3, s.getAge());
	            ps.setString(4, s.getGender());
	            ps.setString(5, s.getCity());
	            ps.setString(6, s.getAccountNumber());
	            ps.setString(7, s.getBalance());
	            ps.setString(8, s.getAccountType());
	            
	            status = ps.executeUpdate();
	            con.close();
	           
	           
	            
	        } catch (Exception e) {
	            // TODO: handle exception
	            e.printStackTrace();
	        }
	        
	        finally {
	        	ps.close();
	        	con.close();
	        	
	        	
	        }
	        
	        return status;
	        
	        
	    }
	    
	    public static int update(Customer c) {
			
			int status = 0;
				
				try {
					Connection con = getConnection();
					PreparedStatement ps = con.prepareStatement("update Customer set firstname=?, lastname=?, age=?, city=?, gender=? where accountnumber=? ");
					
					ps.setString(1, c.getFirstName());
					ps.setString(2, c.getLastName());
					ps.setString(3, c.getAge());
					ps.setString(4, c.getCity());
					ps.setString(5, c.getGender());
					ps.setString(6, c.getAccountNumber());
					status = ps.executeUpdate();
					con.close();
					
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				
				return status;
				
				
			}
	    

		public static int delete(String accountno) {
			
			int status = 0;
				
				try {
					Connection con = getConnection();
					PreparedStatement ps = con.prepareStatement("delete from Customer where accountnumber=? ");
					ps.setString(1, accountno);
					
					status = ps.executeUpdate();
				
					con.close();
					
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				
				return status;
				
				
			}
		
		
		public static ArrayList<Customer> getAllStudent() {
			
			ArrayList<Customer> list = new ArrayList<Customer>();
			try {
				Connection con = getConnection();
				PreparedStatement ps = con.prepareStatement("select * from Customer");
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					Customer s = new Customer();
					 s.setAccountNumber(rs.getString("AccountNumber"));
					 s.setFirstName(rs.getString("FirstName"));
					 s.setLastName(rs.getString("LastName"));
					 s.setAge(rs.getString("Age"));
					 s.setGender(rs.getString("Gender"));
					 s.setCity(rs.getString("City"));
					 s.setBalance(rs.getString("Balance"));
					 s.setAccountType(rs.getString("AccountType"));
					 list.add(s);
					 
				}
				con.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
			
			
		}
		
//		public static Customer getUser(String accountNumber)
//		{
//			
//			try {
//				Connection con = getConnection();
//				PreparedStatement ps = con.prepareStatement("select * from Customer");
//				ResultSet rs = ps.executeQuery();
//				while (rs.next()) {
//					Customer s = new Customer();
//					 s.setAccountNumber(rs.getString("AccountNumber"));
//					 s.setFirstName(rs.getString("FirstName"));
//					 s.setLastName(rs.getString("LastName"));
//					 s.setAge(rs.getString("Age"));
//					 s.setGender(rs.getString("Gender"));
//					 s.setCity(rs.getString("City"));
//					 s.setBalance(rs.getString("Balance"));
//					 s.setAccountType(rs.getString("AccountType"));
//					 list.add(s);
//					 
//				}
//				con.close();
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			
//		}
		
		public static int search(String accountNumber) {
//			String accountNumber = request.getParameter("accountno");
			
			Customer fetchedUser = null;
			
			
			ArrayList<Customer> allCustomers = CustomerDao.getAllStudent();
			
			for(int i=0;i<allCustomers.size();i++)
			{
				if(allCustomers.get(i).getAccountNumber().equals(accountNumber))
				{
					fetchedUser = allCustomers.get(i);
					break;
				}
			}
			
			if(fetchedUser!=null)return 1;
			else return 0;
			
		}
		
		
		
		
	

}
