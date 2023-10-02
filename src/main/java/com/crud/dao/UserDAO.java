package com.crud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.crud.model.User;

public class UserDAO {

	private String url = "jdbc:mysql://localhost:3306/student-crud";
	private String user = "root";
	private String pass = "Parth@1314";

	String Insert_query = "insert into user (name, email, country) VALUES (?, ?, ?)";
	String select_all_query = "select * from user";
	String select_user_by_id = "select id,name,email,country from user where id =?";
	String select_all_user = "select * from user";
    String delete_user = "delete from user where id = ?;";
    String update_user = "update user set name = ?, email = ?, country = ? where id = ?";

	
	public UserDAO() {
		
	}
	
	public Connection getConnection() {
		Connection connection = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public void insertUser(com.crud.model.User newUser) {
		try(Connection connection = getConnection(); PreparedStatement pstmt = connection.prepareStatement(Insert_query)) {
			pstmt.setString(1, newUser.getName());
			pstmt.setString(2, newUser.getEmail());
			pstmt.setString(3, newUser.getCountry());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public List < User > selectAllUsers() {

        List < User > users = new ArrayList < > ();
        try (Connection connection = getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(select_all_query);) {
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }	
	
	public User selectUser(int id) {
        User user = null;
        try (Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(select_user_by_id);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

	
	  public boolean deleteUser(int id) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(delete_user);) {
	            statement.setInt(1, id);
	            rowDeleted = statement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }
	
	   public boolean updateUser(User user) throws SQLException {
	        boolean rowUpdated;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(update_user);) {
	            statement.setString(1, user.getName());
	            statement.setString(2, user.getEmail());
	            statement.setString(3, user.getCountry());
	            statement.setInt(4, user.getId());

	            rowUpdated = statement.executeUpdate() > 0;
	        }
	        return rowUpdated;
	    }  
}
