package com.demo.user.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.user.Bean.User;
import com.emp.crud.DTO.EmployeeDTO;

public class UserDAO {
	public static int SaveEmployee(User emp) throws SQLException
	{
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/emp_crud";
			Connection con=DriverManager.getConnection(url,"root","admin123");
			PreparedStatement stmt=con.prepareStatement("insert into emp_table(name,password,email,country)values(?,?,?,?)");
			stmt.setString(1, emp.getName());
			stmt.setString(2, emp.getPassword());
			stmt.setString(3, emp.getEmail());
			stmt.setString(4, emp.getCountry());
			status=stmt.executeUpdate();
			System.out.print(status);
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return status;		

}
	public static List<User> get_Employee() throws ClassNotFoundException
	{
		ArrayList<User> l1= new ArrayList<User>();
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/emp_crud";
		Connection con;
		try {
			con = DriverManager.getConnection(url,"root","admin123");
			PreparedStatement stmt=con.prepareStatement("select *from emp_table");
			ResultSet rs=stmt.executeQuery();
			while(rs.next())
			{
				User e1=new User();
				e1.setId(rs.getInt(1));
				e1.setName(rs.getString(2));
				e1.setPassword(rs.getString(3));
				e1.setEmail(rs.getString(4));
				e1.setCountry(rs.getString(5));
				l1.add(e1);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l1;
	
		
	}

}
