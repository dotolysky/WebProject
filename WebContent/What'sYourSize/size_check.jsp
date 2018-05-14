<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="EUC-KR">
		<style type="text/css">
			.member{position:absolute;
			top:10px;
			right:10px;}
			a{
				text-decoration: none;
			}
      .content{
        position: relative;
        width:450px;
        margin:0 auto;
      }
      @font-face {
		  font-family: 'Godo';
		  font-style: normal;
		  font-weight: 400;
		  src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoM.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoM.woff') format('woff');
		}

		@font-face {
		  font-family: 'Godo';
		  font-style: normal;
		  font-weight: 700;
		  src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoB.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoB.woff') format('woff');
		}
		#all *{
			font-family: 'Godo', sans-serif;
		}
		</style>
		<title>head</title>
	</head>
  <body id="all">
<% 
  request.setCharacterEncoding("EUC-KR");
  String id = (String)session.getAttribute("id");
  String nickname = (String)session.getAttribute("nickname");
  %>
  	<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
  	<%
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
	        String sql = "select round(avg(total),2), round(avg(shoulder),2), round(avg(chest),2), round(avg(sleeve),2) from outer_size where nickname=?";
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1,nickname);
	        rs = pstmt.executeQuery();
	        while(rs.next()){
	        	total = rs.getFloat(1);
	        	shoulder = rs.getFloat(2);
	        	chest = rs.getFloat(3);
	        	sleeve = rs.getFloat(4);
	        }
	  
	%>
    <div id="spec">
      <table border="1">
        <caption>�ƿ���</caption>
        <tr>
          <th>����</th>
          <th>����ʺ�</th>
          <th>�����ܸ�</th>
          <th>�Ҹű���</th>
        </tr>
        <tr>
          <th><%=total%></th>
          <th><%=shoulder %></th>
          <th><%=chest %></th>
          <th><%=sleeve %></th>
        </tr>
      </table>
      <br>
	<%
	sql= null;
    sql = "select round(avg(total),2), round(avg(shoulder),2), round(avg(chest),2), round(avg(sleeve),2) from short_tee where nickname=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1,nickname);
    rs = pstmt.executeQuery();
    while(rs.next()){
    	total = rs.getFloat(1);
    	shoulder = rs.getFloat(2);
    	chest = rs.getFloat(3);
    	sleeve = rs.getFloat(4);
    }
	%>
      <table border="1">
        <caption>����Ƽ����</caption>
        <tr>
          <th>����</th>
          <th>����ʺ�</th>
          <th>�����ܸ�</th>
          <th>�Ҹű���</th>
        </tr>
        <tr>
          <th><%=total%></th>
          <th><%=shoulder %></th>
          <th><%=chest %></th>
          <th><%=sleeve %></th>
        </tr>
      </table>
      <br>
	<%
	sql= null;
    sql = "select round(avg(total),2), round(avg(shoulder),2), round(avg(chest),2), round(avg(sleeve),2) from long_tee where nickname=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1,nickname);
    rs = pstmt.executeQuery();
    while(rs.next()){
    	total = rs.getFloat(1);
    	shoulder = rs.getFloat(2);
    	chest = rs.getFloat(3);
    	sleeve = rs.getFloat(4);
    }
	%>
      <table border="1">
        <caption>����Ƽ����</caption>
        <tr>
          <th>����</th>
          <th>����ʺ�</th>
          <th>�����ܸ�</th>
          <th>�Ҹű���</th>
        </tr>
        <tr>
          <th><%=total%></th>
          <th><%=shoulder %></th>
          <th><%=chest %></th>
          <th><%=sleeve %></th>
        </tr>
      </table>
      <br>
	<%
	sql= null;
    sql = "select round(avg(total),2), round(avg(shoulder),2), round(avg(chest),2), round(avg(sleeve),2) from shirt where nickname=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1,nickname);
    rs = pstmt.executeQuery();
    while(rs.next()){
    	total = rs.getFloat(1);
    	shoulder = rs.getFloat(2);
    	chest = rs.getFloat(3);
    	sleeve = rs.getFloat(4);
    }
	%>	
      <table border="1">
        <caption>����</caption>
        <tr>
          <th>����</th>
          <th>����ʺ�</th>
          <th>�����ܸ�</th>
          <th>�Ҹű���</th>
        </tr>
        <tr>
          <th><%=total%></th>
          <th><%=shoulder %></th>
          <th><%=chest %></th>
          <th><%=sleeve %></th>
        </tr>
      </table>
      <br>
	<%
	sql= null;
    sql = "select round(avg(total),2), round(avg(waist),2), round(avg(thigh),2), round(avg(bottom),2), round(avg(bottom_section),2) from long_pants where nickname=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1,nickname);
    rs = pstmt.executeQuery();
    while(rs.next()){
    	total = rs.getFloat(1);
    	waist = rs.getFloat(2);
    	thigh = rs.getFloat(3);
    	bottom = rs.getFloat(4);
    	bottom_section = rs.getFloat(5);
    }
	%>	
      <table border="1">
        <caption>�����</caption>
        <tr>
          <th>����</th>
          <th>�㸮�ܸ�</th>
          <th>������ܸ�</th>
          <th>����</th>
          <th>�شܴܸ�</th>
        </tr>
        <tr>
          <th><%=total%></th>
          <th><%=waist %></th>
          <th><%=thigh %></th>
          <th><%=bottom %></th>
          <th><%=bottom_section %></th>
        </tr>
      </table>
      <br>
	<%
	sql= null;
    sql = "select round(avg(total),2), round(avg(waist),2), round(avg(thigh),2), round(avg(bottom),2), round(avg(bottom_section),2) from short_pants where nickname=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1,nickname);
    rs = pstmt.executeQuery();
    while(rs.next()){
    	total = rs.getFloat(1);
    	waist = rs.getFloat(2);
    	thigh = rs.getFloat(3);
    	bottom = rs.getFloat(4);
    	bottom_section = rs.getFloat(5);
    }
	%>
      <table border="1">
        <caption>�ݹ���</caption>
        <tr>
          <th>����</th>
          <th>�㸮�ܸ�</th>
          <th>������ܸ�</th>
          <th>����</th>
          <th>�شܴܸ�</th>
        </tr>
        <tr>
          <th><%=total%></th>
          <th><%=waist %></th>
          <th><%=thigh %></th>
          <th><%=bottom %></th>
          <th><%=bottom_section %></th>
        </tr>
      </table>
      <br>
	<%
	sql= null;
    sql = "select round(avg(total),2), round(avg(waist),2), round(avg(bottom_section),2) from skirt where nickname=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1,nickname);
    rs = pstmt.executeQuery();
    while(rs.next()){
    	total = rs.getFloat(1);
    	waist = rs.getFloat(2);
    	bottom_section = rs.getFloat(3);
    }
	%>	
      <table border="1">
        <caption>ġ��</caption>
        <tr>
          <th>����</th>
          <th>�㸮�ܸ�</th>
          <th>�شܴܸ�</th>
        </tr>
        <tr>
          <th><%=total%></th>
          <th><%=waist %></th>
          <th><%=bottom_section %></th>
        </tr>
      </table>
    </div>
   <%
		}catch(Exception e){
	    	out.println("MySql �����ͺ��̽� univdb�� student ��ȸ�� ������ �ֽ��ϴ�. <hr>");
	        out.println(e.toString());
	        e.printStackTrace();
	  } finally {
	        if(pstmt != null) pstmt.close();
	        if(con != null) con.close();
	  }
		
   %>
  </body>
</html>
