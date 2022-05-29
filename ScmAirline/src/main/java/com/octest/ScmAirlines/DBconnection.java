package com.octest.ScmAirlines;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	public static Connection connect() {
		Connection con = null;
		try {
			Class.forName("org.sqlite.JDBC");
			con = DriverManager.getConnection("jdbc:sqlite:ScmAirospaceDB.db");// Connecting to our Database
			System.out.println("Connexion à la base de donnée réussie!");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			 System.out.println(e+"");
		}
		
		return con;
		
	}

}


