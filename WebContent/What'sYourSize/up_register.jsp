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
	<%request.setCharacterEncoding("euc-kr"); %>
	<%
	String nickname = (String)session.getAttribute("nickname");
	String kind = request.getParameter("top");
	String total = request.getParameter("total");
	String shoulder = request.getParameter("shoulder");
	String chest = request.getParameter("chest");
	String sleeve = request.getParameter("sleeve");
	Connection con = null;
	PreparedStatement pstmt = null;
	String driverName = "com.mysql.jdbc.Driver";
	String dbURL = "jdbc:mysql://localhost:3306/size";
	try {
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "rla0540");
        String sql="";
        if(kind.equals("outer")){
            sql = "insert into outer_size values(?,?,?,?,?,CURRENT_TIMESTAMP)";
        }else if(kind.equals("short")){
        	sql = "insert into short_tee values(?,?,?,?,?,CURRENT_TIMESTAMP)";
        }else if(kind.equals("long")){
        	sql = "insert into long_tee values(?,?,?,?,?,CURRENT_TIMESTAMP)";
        }else if(kind.equals("shirt")) {
        	sql = "insert into shirt values(?,?,?,?,?,CURRENT_TIMESTAMP)";
        }
        pstmt = con.prepareStatement(sql);
        pstmt.setString(1,nickname);
        pstmt.setFloat(2,Float.parseFloat(total));
        pstmt.setFloat(3,Float.parseFloat(shoulder));
        pstmt.setFloat(4, Float.parseFloat(chest));
        pstmt.setFloat(5, Float.parseFloat(sleeve));
        pstmt.executeUpdate();
    }catch(Exception e){
        out.println(e.toString());
        e.printStackTrace();
  	}
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }
  %>
  <jsp:forward page="size_check2.jsp"/>
</body>
</html>