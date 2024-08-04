package bean;

public class Customer {
    private String Firstname; 
    private String LastName; 
    private String Age; 
    private String Gender;  
    private String City; 
    private String AccountNumber; 
    private String Balance; 
    private String AccountType;
    
//    public Customer(String firstname, String lastName, String age, String gender, String city, String accountNumber,
//			String balance, String accountType) {
//		Firstname = firstname;
//		LastName = lastName;
//		Age = age;
//		Gender = gender;
//		City = city;
//		AccountNumber = accountNumber;
//		Balance = balance;
//		AccountType = accountType;
//	}
    
    
    
    
    public String getFirstName() {
        return Firstname;
    }
    public void setFirstName(String firstname) {
        Firstname = firstname;
    }
    public String getLastName() {
        return LastName;
    }
    public void setLastName(String lastName) {
        LastName = lastName;
    }
    public String getAge() {
        return Age;
    }
    public void setAge(String age) {
        Age = age;
    }
    public String getGender() {
        return Gender;
    }
    public void setGender(String gender) {
        Gender = gender;
    }
    
    public String getCity() {
        return City;
    }
    public void setCity(String city) {
        City = city;
    }
    public String getAccountNumber() {
        return AccountNumber;
    }
    public void setAccountNumber(String accountNumber) {
        AccountNumber = accountNumber;
    }
    public String getBalance() {
        return Balance;
    }
    public void setBalance(String balance) {
        Balance = balance;
    }
    public String getAccountType() {
        return AccountType;
    }
    public void setAccountType(String accountType) {
        AccountType = accountType;
    } 
    
    
    
}