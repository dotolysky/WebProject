<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
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
	caption{
		font-size:15pt;
	}
	table tr:nth-child(1){
		background-color:aliceblue;
	}
	input{
		width:100%;
		height:100%;
	}
</style>
<title>Insert title here</title>
</head>
<body id="all">
	<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
	<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = (String)session.getAttribute("id");
	  String nickname = (String)session.getAttribute("nickname");
	  Connection con = null;
	  Statement stmt = null;
	  String driverName = "com.mysql.jdbc.Driver";
	  String dbURL = "jdbc:mysql://localhost:3306/size";
	  try {
	        Class.forName(driverName);
	        con = DriverManager.getConnection(dbURL, "root", "rla0540");
	        stmt = con.createStatement();
	        ResultSet result = stmt.executeQuery("select * from outer_size where nickname='"+nickname+"';");
  	%>
  	<form method="post" action="delete_size.jsp" id="all_form">
  	<table width=100% border=2 cellpadding=1>
  	<caption id="아우터">아우터</caption>
    <tr>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>총장</b></td>
       <td align=center><b>어깨너비</b></td>
       <td align=center><b>가슴너비</b></td>
       <td align=center><b>소매길이</b></td>
       <td align=center><b>등록 날짜</b></td>
       <td align=center><b>제거</b></td>
    </tr>
    <%
        while (result.next()) {
    %>
    <tr>
       <td align=center id=<%= result.getString(1) %>><%= result.getString(1) %></td>
       <td align=center id=<%= result.getString(2) %>><%= result.getString(2) %></td>
       <td align=center id=<%= result.getString(3) %>><%= result.getString(3) %></td>
       <td align=center id=<%= result.getString(4) %>><%= result.getString(4) %></td>
       <td align=center id=<%= result.getString(5) %>><%= result.getString(5) %></td>
       <td align=center id=<%= result.getString(6) %>><%= result.getString(6) %></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>
    <% 
   		}
    result.close();
    result = stmt.executeQuery("select * from short_tee  where nickname='"+nickname+"';");
    %>
    </table>
    <br>
      	<table width=100% border=2 cellpadding=1>
  	<caption id="반팔티셔츠">반팔티셔츠</caption>
    <tr>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>총장</b></td>
       <td align=center><b>어깨너비</b></td>
       <td align=center><b>가슴너비</b></td>
       <td align=center><b>소매길이</b></td>
       <td align=center><b>등록 날짜</b></td>
       <td align=center><b>제거</b></td>
    </tr>
    <%
        while (result.next()) {
    %>
    <tr>
       <td align=center id=<%= result.getString(1) %>><%= result.getString(1) %></td>
       <td align=center id=<%= result.getString(2) %>><%= result.getString(2) %></td>
       <td align=center id=<%= result.getString(3) %>><%= result.getString(3) %></td>
       <td align=center id=<%= result.getString(4) %>><%= result.getString(4) %></td>
       <td align=center id=<%= result.getString(5) %>><%= result.getString(5) %></td>
       <td align=center id=<%= result.getString(6) %>><%= result.getString(6) %></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>
    <%
		}
	result.close();
    result = stmt.executeQuery("select * from long_tee where nickname='"+nickname+"';");
    %>
    </table>
    <br>
      	<table width=100% border=2 cellpadding=1>
  	<caption id="긴팔티셔츠">긴팔티셔츠</caption>
    <tr>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>총장</b></td>
       <td align=center><b>어깨너비</b></td>
       <td align=center><b>가슴너비</b></td>
       <td align=center><b>소매길이</b></td>
       <td align=center><b>등록 날짜</b></td>
       <td align=center><b>제거</b></td>
    </tr>
    <%
        while (result.next()) {
    %>
    <tr>
       <td align=center id=<%= result.getString(1) %>><%= result.getString(1) %></td>
       <td align=center id=<%= result.getString(2) %>><%= result.getString(2) %></td>
       <td align=center id=<%= result.getString(3) %>><%= result.getString(3) %></td>
       <td align=center id=<%= result.getString(4) %>><%= result.getString(4) %></td>
       <td align=center id=<%= result.getString(5) %>><%= result.getString(5) %></td>
       <td align=center id=<%= result.getString(6) %>><%= result.getString(6) %></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>
    <%
		}
	result.close();
    result = stmt.executeQuery("select * from shirt where nickname='"+nickname+"';");
    %>
    </table>
    <br>
      	<table width=100% border=2 cellpadding=1>
  	<caption id="셔츠">셔츠</caption>
    <tr>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>총장</b></td>
       <td align=center><b>어깨너비</b></td>
       <td align=center><b>가슴너비</b></td>
       <td align=center><b>소매길이</b></td>
       <td align=center><b>등록 날짜</b></td>
       <td align=center><b>제거</b></td>
    </tr>
    <%
        while (result.next()) {
    %>
    <tr>
       <td align=center id=<%= result.getString(1) %>><%= result.getString(1) %></td>
       <td align=center id=<%= result.getString(2) %>><%= result.getString(2) %></td>
       <td align=center id=<%= result.getString(3) %>><%= result.getString(3) %></td>
       <td align=center id=<%= result.getString(4) %>><%= result.getString(4) %></td>
       <td align=center id=<%= result.getString(5) %>><%= result.getString(5) %></td>
       <td align=center id=<%= result.getString(6) %>><%= result.getString(6) %></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>
    <%
		}
	result.close();
    result = stmt.executeQuery("select * from long_pants where nickname='"+nickname+"';");
    %>
    </table>
    <br>
      	<table width=100% border=2 cellpadding=1>
  	<caption id="긴바지">긴바지</caption>
    <tr>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>총장</b></td>
       <td align=center><b>허리단면</b></td>
       <td align=center><b>허벅지단면</b></td>
       <td align=center><b>밑위</b></td>
       <td align=center><b>밑단단면</b></td>
       <td align=center><b>등록 날짜</b></td>
       <td align=center><b>제거</b></td>
    </tr>
    <%
        while (result.next()) {
    %>
    <tr>
       <td align=center id=<%= result.getString(1) %>><%= result.getString(1) %></td>
       <td align=center id=<%= result.getString(2) %>><%= result.getString(2) %></td>
       <td align=center id=<%= result.getString(3) %>><%= result.getString(3) %></td>
       <td align=center id=<%= result.getString(4) %>><%= result.getString(4) %></td>
       <td align=center id=<%= result.getString(5) %>><%= result.getString(5) %></td>
       <td align=center id=<%= result.getString(6) %>><%= result.getString(6) %></td>
       <td align=center id=<%= result.getString(7) %>><%= result.getString(7) %></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>
    <%
		}
	result.close();
    result = stmt.executeQuery("select * from short_pants where nickname='"+nickname+"';");
    %>
    </table>
    <br>
      	<table width=100% border=2 cellpadding=1>
  	<caption id="반바지">반바지</caption>
    <tr>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>총장</b></td>
       <td align=center><b>허리단면</b></td>
       <td align=center><b>허벅지단면</b></td>
       <td align=center><b>밑위</b></td>
       <td align=center><b>밑단단면</b></td>
       <td align=center><b>등록 날짜</b></td>
       <td align=center><b>제거</b></td>
    </tr>
    <%
        while (result.next()) {
    %>
    <tr>
       <td align=center id=<%= result.getString(1) %>><%= result.getString(1) %></td>
       <td align=center id=<%= result.getString(2) %>><%= result.getString(2) %></td>
       <td align=center id=<%= result.getString(3) %>><%= result.getString(3) %></td>
       <td align=center id=<%= result.getString(4) %>><%= result.getString(4) %></td>
       <td align=center id=<%= result.getString(5) %>><%= result.getString(5) %></td>
       <td align=center id=<%= result.getString(6) %>><%= result.getString(6) %></td>
       <td align=center id=<%= result.getString(7) %>><%= result.getString(7) %></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>
    
    <%
		}
	result.close();
    result = stmt.executeQuery("select * from skirt where nickname='"+nickname+"';");
    %>
    </table>
    <br>
    <table width=100% border=2 cellpadding=1>
  	<caption id="치마">치마</caption>
    <tr>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>총장</b></td>
       <td align=center><b>허리단면</b></td>
       <td align=center><b>밑단단면</b></td>
       <td align=center><b>등록 날짜</b></td>
       <td align=center><b>제거</b></td>
    </tr>
    <%
        while (result.next()) {
    %>
    <tr>
       <td align=center id=<%= result.getString(1) %>><%= result.getString(1) %></td>
       <td align=center id=<%= result.getString(2) %>><%= result.getString(2) %></td>
       <td align=center id=<%= result.getString(3) %>><%= result.getString(3) %></td>
       <td align=center id=<%= result.getString(4) %>><%= result.getString(4) %></td>
       <td align=center id=<%= result.getString(5) %>><%= result.getString(5) %></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>
    
    <br>
	<%
        }%>
        </table>
        <%
	  }
	  catch(Exception e) {
	    	out.println("MySql 데이터베이스 univdb의 student 조회에 문제가 있습니다. <hr>");
	        out.println(e.toString());
	        e.printStackTrace();
	    }
	    finally {
	        if(stmt != null) stmt.close();
	        if(con != null) con.close();
	    }
    %>
    </form>
    <script>
    	var all_form = document.getElementById("all_form");
    	function find(btnValue){
    		var parent = btnValue.parentNode;
    		var parent2 = parent.parentNode;
    		var parent3 = parent2.parentNode;
    		parent3 = parent3.parentNode;
    		var sub = parent3.childNodes;
    		var caption = sub.item(1).id;
    		var subset = parent2.childNodes;
    		var c1 = subset.item(1).id;
    		var c2;
    		var c3;
    		var c4;
    		var c5;
    		var c6;
    		var c7;
    		if(caption=="치마"){
    			var c2 = subset.item(3).id;
        		var c3 = subset.item(5).id;
        		var c4 = subset.item(7).id;
        		var c5 = subset.item(9).id;
        		var c6 = subset.item(11).id;
    		}
    		else{
        		var c2 = subset.item(3).id;
        		var c3 = subset.item(5).id;
        		var c4 = subset.item(7).id;
        		var c5 = subset.item(9).id;
        		var c6 = subset.item(11).id;
        		var c7 = subset.item(13).id;
    		}
    		window.open("delete_size.jsp?kind="+caption+"&nickname="+c1+"&c2="+c2+"&c3="+c3+"&c4="+c4+"&c5="+c5+"&c6="+c6+"&c7="+c7,"","width=300, height=200");
    		location.reload();
    	}
    </script>
</body>
</html>