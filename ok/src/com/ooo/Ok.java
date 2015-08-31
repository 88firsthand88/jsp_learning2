package com.ooo;
import java.sql.*;

public class Ok {
	public static void main(String[] args) throws SQLException{
		String username = "root";
		String password = "19921205";
		String url = "jdbc:mysql://127.0.0.1:3306/student";
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		Connection connection = DriverManager.getConnection(url,username,password);
		if(connection != null){
			System.out.println("nihao");
		}
		Statement statement = connection.createStatement();
		String sql = "select name from student";
		ResultSet rSet = statement.executeQuery(sql);
		while(rSet.next()){
			String ss = rSet.getString("name");
			System.out.println(ss);
		}
	}
}
