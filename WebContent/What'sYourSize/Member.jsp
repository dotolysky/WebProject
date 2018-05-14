<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%@ page import="java.util.ArrayList, size.MemberEntity" %>

<h2> 자바 빈즈 StudentDatabase를 이용한 테이블 student 조회 프로그램 </h2>
<hr><center>
<h2>학생정보 조회</h2>

	<jsp:useBean id="stdtdb" class="size.MemberDatabase" scope="page" />
<%
	ArrayList<MemberEntity> list = stdtdb.getMemberList();
	int counter = list.size();
	if (counter > 0) {
%>
    <table width=100% border=2 cellpadding=1>
    <tr>
       <td align=center><b>아이디</b></td>
       <td align=center><b>암호</b></td>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>키</b></td>
       <td align=center><b>몸무게</b></td>
    </tr>
<%
		for( MemberEntity stdt : list ) {
%>
    <tr>
       <td align=center><%= stdt.getId() %></td>
       <td align=center><%= stdt.getPasswd() %></td>
       <td align=center><%= stdt.getNickname() %></td>
       <td align=center><%= stdt.getHeight() %></td>
       <td align=center><%= stdt.getWeight() %></td>
    </tr>
<%
	    }
	}
%>
</table>
</center>

<p><hr>조회된 학생 수가 <%=counter%>명 입니다.

</body>
</html>