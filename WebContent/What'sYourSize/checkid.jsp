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
	    	out.println("MySql 데이터베이스 univdb의 student 조회에 문제가 있습니다. <hr>");
	        out.println(e.toString());
	        e.printStackTrace();
	  }

	%>
	<form method="post" action="checkid.jsp">
	<%
		try{
			if(rs.next() || (id==null)){
	%>
			현재 <%=id %> 중복입니다. <br>
	<%
			}else{
				%>
			현재 <%=id %> 사용가능합니다. <br>
			<input type="button" value="현재 아이디 선택" onclick="self.close()">
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