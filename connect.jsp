<%@ page import="java.sql.*"%>
<%
	String number = request.getParameter("number");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=12345");
		PreparedStatement ps = con.prepareStatement("insert into test.addingnumber values(?)");
		ps.setString(1, number);
		int x = ps.executeUpdate();
		if (x > 0) {
			out.println("Number added successfully...");
		} else {
			out.println("Adding number faild...");
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>