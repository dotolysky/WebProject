<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
  	<%
  		String kind = request.getParameter("kind");
  		kind = new String(kind.getBytes("8859_1"), "euc-kr"); 
  		String nickname = request.getParameter("nickname");
  		nickname = new String(nickname.getBytes("8859_1"), "euc-kr"); 
  		String c2 = request.getParameter("c2");
  		String c3 = request.getParameter("c3");
  		String c4 = request.getParameter("c4");
  		String c5 = request.getParameter("c5");
  		String c6 = request.getParameter("c6");
  		String c7 = request.getParameter("c7");
		Connection con = null;
	 	PreparedStatement pstmt = null;
	 	ResultSet rs = null;
	 	float total=0;
	 	float shoulder=0;
	 	float chest=0;
	 	float sleeve=0;
	 	float waist=0;
	 	float thigh=0;
	 	float bottom=0;
	 	float bottom_section=0;
	 	String driverName = "com.mysql.jdbc.Driver";
		String dbURL = "jdbc:mysql://localhost:3306/size";
		try {
	        Class.forName(driverName);
	        con = DriverManager.getConnection(dbURL, "root", "rla0540");
	        String sql="";
	        if(kind.equals("아우터")){
	        	sql = "delete from outer_size where nickname=? and total=? and shoulder=? and chest=? and sleeve=?";
	        	pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,nickname);
		        pstmt.setFloat(2,Float.parseFloat(c2));
		        pstmt.setFloat(3,Float.parseFloat(c3));
		        pstmt.setFloat(4,Float.parseFloat(c4));
		        pstmt.setFloat(5,Float.parseFloat(c5));
		        pstmt.executeUpdate();
	        }
	        else if(kind.equals("반팔티셔츠")){
	        	sql = "delete from short_tee where nickname=? and total=? and shoulder=? and chest=? and sleeve=?";
	        	pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,nickname);
		        pstmt.setFloat(2,Float.parseFloat(c2));
		        pstmt.setFloat(3,Float.parseFloat(c3));
		        pstmt.setFloat(4,Float.parseFloat(c4));
		        pstmt.setFloat(5,Float.parseFloat(c5));
		        pstmt.executeUpdate();
	        }
	        else if(kind.equals("긴팔티셔츠")){
	        	sql = "delete from long_tee where nickname=? and total=? and shoulder=? and chest=? and sleeve=?";
	        	pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,nickname);
		        pstmt.setFloat(2,Float.parseFloat(c2));
		        pstmt.setFloat(3,Float.parseFloat(c3));
		        pstmt.setFloat(4,Float.parseFloat(c4));
		        pstmt.setFloat(5,Float.parseFloat(c5));
		        pstmt.executeUpdate();
	        }
	        else if(kind.equals("셔츠")){
	        	sql = "delete from shirt where nickname=? and total=? and shoulder=? and chest=? and sleeve=?";
	        	pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,nickname);
		        pstmt.setFloat(2,Float.parseFloat(c2));
		        pstmt.setFloat(3,Float.parseFloat(c3));
		        pstmt.setFloat(4,Float.parseFloat(c4));
		        pstmt.setFloat(5,Float.parseFloat(c5));
		        pstmt.executeUpdate();
	        }
	        else if(kind.equals("긴바지")){
	        	sql = "delete from long_pants where nickname=? and total=? and waist=? and thigh=? and bottom=? and bottom_section=?";
	        	pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,nickname);
		        pstmt.setFloat(2,Float.parseFloat(c2));
		        pstmt.setFloat(3,Float.parseFloat(c3));
		        pstmt.setFloat(4,Float.parseFloat(c4));
		        pstmt.setFloat(5,Float.parseFloat(c5));
		        pstmt.setFloat(6,Float.parseFloat(c6));
		        pstmt.executeUpdate();
	        }
	        else if(kind.equals("반바지")){
	        	sql = "delete from short_pants where nickname=? and total=? and waist=? and thigh=? and bottom=? and bottom_section=?";
	        	pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,nickname);
		        pstmt.setFloat(2,Float.parseFloat(c2));
		        pstmt.setFloat(3,Float.parseFloat(c3));
		        pstmt.setFloat(4,Float.parseFloat(c4));
		        pstmt.setFloat(5,Float.parseFloat(c5));
		        pstmt.setFloat(6,Float.parseFloat(c6));
		        pstmt.executeUpdate();
	        }
	        else if(kind.equals("치마")){
	        	sql = "delete from skirt where nickname=? and total=? and waist=? and bottom_section=?";
	        	pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,nickname);
		        pstmt.setFloat(2,Float.parseFloat(c2));
		        pstmt.setFloat(3,Float.parseFloat(c3));
		        pstmt.setFloat(4,Float.parseFloat(c4));
		        pstmt.executeUpdate();
	        }
	        %>
	        <h1 style="text-align:center;">제거완료</h1>
	        </script>
	        <%
		}catch(Exception e){
			out.println("MySql 데이터베이스 univdb의 student 조회에 문제가 있습니다. <hr>");
			out.println(e.toString());
			e.printStackTrace();
		} finally {
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
		}
	        
	%>
	
    
</body>
</html>