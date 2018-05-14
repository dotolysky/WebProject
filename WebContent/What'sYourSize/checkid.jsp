<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="stdtdb" class="size.MemberDatabase" scope="page" />
	
	<% request.setCharacterEncoding("EUC-KR");  %>
	<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>

	<%
		String id = request.getParameter("id");
		id = new String(id.getBytes("8859_1"), "euc-kr");   
		Connection con = null;
	 	PreparedStatement pstmt = null;
	 	ResultSet rs = null;
	 	String driverName = "com.mysql.jdbc.Driver";
		String dbURL = "jdbc:mysql://localhost:3306/size";
		try {
	        Class.forName(driverName);
	        con = DriverManager.getConnection(dbURL, "root", "rla0540");
	        String sql = "select * from member where id=?";
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1,id);
	        rs = pstmt.executeQuery();
	  }catch(Exception e){
	    	out.println("MySql �����ͺ��̽� univdb�� student ��ȸ�� ������ �ֽ��ϴ�. <hr>");
	        out.println(e.toString());
	        e.printStackTrace();
	  }

	%>
	<form method="post" action="checkid.jsp">
	<%
		try{
			if(rs.next() || (id==null)){
	%>
			���� <%=id %> �ߺ��Դϴ�. <br>
	<%
			}else{
				%>
			���� <%=id %> ��밡���մϴ�. <br>
			<input type="button" value="���� ���̵� ����" onclick="self.close()">
	<%
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
   		finally {
        	if(pstmt != null) pstmt.close();
        	if(con != null) con.close();
    	}
	%>
	</form>

</body>
</html>