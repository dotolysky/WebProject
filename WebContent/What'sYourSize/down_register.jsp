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
	String kind = request.getParameter("bottom_select");
	String total = request.getParameter("total");
	String waist = request.getParameter("waist");
	String thigh = request.getParameter("thigh");
	String bottom = request.getParameter("bottom");
	String bottom_section = request.getParameter("bottom_section");
	out.println(kind);
	Connection con = null;
	PreparedStatement pstmt = null;
	String driverName = "com.mysql.jdbc.Driver";
	String dbURL = "jdbc:mysql://localhost:3306/size";
	try {
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "rla0540");
        String sql;
        if(kind.equals("longp") || kind.equals("shortp")){
        	if(kind.equals("longp")){
        		sql = "insert into long_pants values(?,?,?,?,?,?,CURRENT_TIMESTAMP)";
        	}
        	else{
        		sql = "insert into short_pants values(?,?,?,?,?,?,CURRENT_TIMESTAMP)";
        	}
        	pstmt = con.prepareStatement(sql);
            pstmt.setString(1,nickname);
            pstmt.setFloat(2,Float.parseFloat(total));
            pstmt.setFloat(3,Float.parseFloat(waist));
            pstmt.setFloat(4, Float.parseFloat(thigh));
            pstmt.setFloat(5, Float.parseFloat(bottom));
            pstmt.setFloat(6,Float.parseFloat(bottom_section));
        }else {
        	sql = "insert into skirt values(?,?,?,?,CURRENT_TIMESTAMP)";
        	pstmt = con.prepareStatement(sql);
            pstmt.setString(1,nickname);
            pstmt.setFloat(2,Float.parseFloat(total));
            pstmt.setFloat(3,Float.parseFloat(waist));
            pstmt.setFloat(4, Float.parseFloat(bottom_section));
        }
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