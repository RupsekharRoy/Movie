package movie_ticket_booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAO1 {
	
	
	
	static Connection con=null;
	PreparedStatement ps = null;
	ResultSet rs =null;
	public static  Connection connect(){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_admin","user","12345");
		}
		catch(Exception e){
			System.out.println(e);
		}
		return con;
	}
	public int addCustomer(String name,long mobile,String mail,String password,String conpassword){
		int j= 0;
		try{
		con=connect();
		ps=con.prepareStatement("insert into regmovie values(?,?,?,?,?)");
		ps.setString(1, name);
		ps.setLong(2, mobile);
		ps.setString(3, mail);
		ps.setString(4,password);
		ps.setString(5,conpassword);
		j =ps.executeUpdate();
		}catch(Exception e){
			System.out.println(e);
		}
		return j;
	}
	public boolean doLogin1(String email,String password){
		int flag=0;
		try{
		con= connect();
		PreparedStatement ps1 = con.prepareStatement("select email,password from regmovie");
		rs=ps1.executeQuery();
		while(rs.next()){
			String email1=rs.getString("email");
			String password1=rs.getString("password");
			if(email1.equals(email)&&password1.equals(password)){
				flag=1;
				break;
			}else{
				flag=0;
			}
		}
		if(flag==1){
			return true;
		}else if(flag==0){
			return false;
		}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}

	

}
