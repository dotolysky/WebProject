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
		String passwd = request.getParameter("passwd");
		String dbpasswd = "";
		String nickname ="";
		Connection con = null;
	 	PreparedStatement pstmt = null;
	 	ResultSet rs = null;
	 	String driverName = "com.mysql.jdbc.Driver";
		String dbURL = "jdbc:mysql://localhost:3306/size";
		try {
	        Class.forName(driverName);
	        con = DriverManager.getConnection(dbURL, "root", "rla0540");
	        String sql = "select passwd,nickname from member where id=?";
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1,id);
	        rs = pstmt.executeQuery();
	        while(rs.next()){
	        	dbpasswd = rs.getString(1);
	        	nickname = rs.getString(2);
	        }
	        rs.close();
	  }catch(Exception e){
	        out.println(e.toString());
	        e.printStackTrace();
	  }
	    finally {
	        if(pstmt != null) pstmt.close();
	        if(con != null) con.close();
	    }
		if(passwd.equals(dbpasswd)){
	%>

	<%
			session.setAttribute("id", id);
			session.setAttribute("nickname", nickname);
	%>
		<script>
		alert('<%=nickname%>님 환영합니다');
		top.document.location.reload();
		</script>
	
	<% 
		}else{
	%>
		<script>
		alert("아이디나 비밀번호를 확인하세요!");
		location.replace("menubar.jsp");
		</script>
		
	<%
		}
	%>
</body>
</html>