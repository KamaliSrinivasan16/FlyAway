package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import com.string.StringUtil;

public class Dao {
	public Connection con = null;
	public Statement st = null;
	public static String Travellers;

	//constructor
	public Dao() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "Rakshikp@1630"); //database location
		System.out.println("connection established with database");
		st = con.createStatement();
	}

	//Returns the flights in the database that matches the search conditions
	public List<String[]> getAvailableFlights(String f, String t, String d,String n) {
		Travellers = n;
		List<String[]> flights = new ArrayList<>();
		String query = "SELECT * FROM flyaway.flights where source='" + f + "' and destination='" + t + "' and date='"
				+ d + "'";
		try {
			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				String[] flight = new String[4];
				flight[0] = rs.getString("id");
				flight[1] = rs.getString("airlines");
				flight[2] = rs.getString("departure_time");
				flight[3] = rs.getString("price");
				flights.add(flight);
				
			}
			return flights;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
	
    //checks the details of the user in the database if user exists
	public HashMap<String, String> checkUser(String email, String password) {

		HashMap<String, String> user = null;
		String query = "select * from users where email='" + email + "' and password='" + password + "'";
		try {
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				user = new HashMap<>();
				user.put("name", rs.getString("username"));
				user.put("email", rs.getString("email"));
				user.put("phno", rs.getString("contact"));
				user.put("adno", rs.getString("aadharno"));
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
     
	//inserts a new user details to the user table in the database
	public boolean insertUser(HashMap<String, String> user) {

		String query = "INSERT INTO users (email, password, username, contact, aadharno) values('" + user.get("email")
				+ "','" + user.get("password") + "','" + user.get("name") + "','" + user.get("phno") + "','"
				+ user.get("adno") + "')";

		try {
			st.execute(query);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	//checks whether the entered admin details are correct 
	public boolean checkAdmin(String email, String password) {

		try {
			ResultSet rs = st
					.executeQuery("select * from admin where email='" + email + "' and password='" + password + "'");
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	//to change the password of the admin
	public boolean changeAdminPassword(String email, String password) {

		try {
			ResultSet rs = st.executeQuery("select * from admin where email='" + email + "'");
			if (!rs.next()) {
				return false;
			}
			st.execute("update admin set password='" + password + "' where email='" + email + "'");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	//to insert a new flight details in the flight table in the database
	public boolean insertFlight(HashMap<String, String> flight) throws SQLException {
		
		String query1 = "INSERT INTO flights (airlines, source, destination, date, departure_time, price) VALUES"
				+ " ('" + StringUtil.fixSqlFieldValue(flight.get("name")) + "'," + " '"
				+ StringUtil.fixSqlFieldValue(flight.get("from")) + "'," + " '"
				+ StringUtil.fixSqlFieldValue(flight.get("to")) + "'," + " '"
				+ StringUtil.fixSqlFieldValue(flight.get("date")) + "'," + " '"
				+ StringUtil.fixSqlFieldValue(flight.get("time")) + "'," + " '"
				+ StringUtil.fixSqlFieldValue(flight.get("price")) + "')";

		System.out.println(flight.get("date"));
		System.out.println(flight.get("time"));
		
		try 
		{
			st.execute(query1);
			return true;
		} catch (SQLException e) {
			System.out.print("error");
			e.printStackTrace();
		}
		return false;
	}
	
	public List<String[]> getAvailableFlights(int id,String name)
	{
		List<String[]> flights = new ArrayList<>();
		String query = "SELECT * FROM flyaway.flights where id='" + id + "'";
		try {
			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				String[] flight = new String[8];
				flight[0] = name;
				flight[1] = rs.getString("airlines");
				flight[2] = rs.getString("source");
				flight[3] = rs.getString("destination");
				flight[4] = rs.getString("date");
				flight[5] = rs.getString("departure_time");
				flight[6] = rs.getString("price");
				flight[7] = Travellers;
				flights.add(flight);
				
			}
			return flights;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return flights;
	}
	
}
