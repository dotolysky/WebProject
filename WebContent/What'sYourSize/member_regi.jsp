<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<% 		request.setCharacterEncoding("euc-kr"); %>
      <%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>

	  	<%
	  	String id = request.getParameter("id");
	  	String passwd = request.getParameter("password");
	  	String nick = request.getParameter("nickname");
	  	String height = request.getParameter("height");
	  	String weight = request.getParameter("weight");
	  	String characteristic = request.getParameter("characteristic");
	  	Float height2 = Float.parseFloat(height);
	  	Float weight2 = Float.parseFloat(weight);
	  Connection con = null;
	  PreparedStatement pstmt = null;
	  //String driverName = "org.gjt.mm.mysql.Driver";
	  String driverName = "com.mysql.jdbc.Driver";
	  String dbURL = "jdbc:mysql://localhost:3306/size";
	  try {
	        Class.forName(driverName);
	        con = DriverManager.getConnection(dbURL, "root", "rla0540");
	        String sql = "insert into member values(?,?,?,?,?,?,CURRENT_TIMESTAMP)";
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1,id);
	        pstmt.setString(2,passwd);
	        pstmt.setString(3,nick);
	        pstmt.setFloat(4, height2);
	        pstmt.setFloat(5, weight2);
	        pstmt.setString(6, characteristic);	
	        pstmt.executeUpdate();
	  }catch(Exception e){
	    	out.println("MySql 데이터베이스 univdb의 student 조회에 문제가 있습니다. <hr>");
	        out.println(e.toString());
	        e.printStackTrace();
	  }

	    finally {
	        if(pstmt != null) pstmt.close();
	        if(con != null) con.close();
	    }
	  %>
	  <jsp:forward page="size_register.jsp"/>
</body>
</html>