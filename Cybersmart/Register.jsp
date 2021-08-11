<%@page import = "java.sql.*"%>
<%
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
String gender  = request.getParameter("gender");
String address = request.getParameter("address");
String mobile = request.getParameter("mobile");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:2021/registration","root","root");
PreparedStatement ps = conn.prepareStatement("insert into register values(?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,password);
ps.setString(3,email);
ps.setString(4,gender);
ps.setString(5,address);
ps.setString(6,mobile);
ps.executeUpdate();
}
catch(Exception e)
{
out.println(e);
}
out.println("<h1>Register Successfully...</h1>");
%>