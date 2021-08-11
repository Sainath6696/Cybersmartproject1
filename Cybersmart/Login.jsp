<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:2021/registration","root","root");
	PreparedStatement ps = conn.prepareStatement("select count(*) from register where email=? and password=?");
	ps.setString(1,email);
	ps.setString(2,password);
	ResultSet rs = ps.executeQuery();
	int count = 0;
	if(rs.next())
	{
		count = rs.getInt(1);
	}
	if(count==0)
	{
		out.println("<h1>Incorrect username/password...<a href='registration.html'>New User</a>?</h1>");
	} 
	else
	{
		out.println("<h1>Login success</h1>");
	}
}
catch(Exception e)
{
	out.println(e);<style type="text/css">
		
}
%>