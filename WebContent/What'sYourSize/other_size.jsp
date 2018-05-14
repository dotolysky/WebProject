<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="EUC-KR">
		<style type="text/css">
      a{text-decoration: none;}
	  .member{position:absolute;
			top:10px;
			right:10px;}
      .scrollbody {
      border-collapse: collapse;
      border: 2px solid #000;
      width: 600px;
      }
      .scrollbody thead tbody{
      height:50px;
      }
      .scrollbody tbody {
      overflow: auto;
      }
      .scrollbody thead tr{
      background-color:lightgray;
      }
      .scrollbody input{
      	width:100%;
      	height:100%;
      }
      .scrollbody tbody tr:nth-child(even){
      	background-color:aliceblue;
      }
      .scrollbody tbody td{
      	height:45px;
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
  String nickname = (String)session.getAttribute("nickname");%>
      	<jsp:useBean id="stdtdb" class="size.MemberDatabase" scope="page" />
<%@ page import="java.util.ArrayList, size.MemberEntity" %>
<%
	ArrayList<MemberEntity> list = stdtdb.getMemberList();
	int counter = list.size();
	if (counter > 0) {
%>
    <table border="1" class="scrollbody">
    <caption><strong>사용자 명단</caption>
    <thead>
    <tr>
       <td align=center><b>아이디</b></td>
       <td align=center><b>닉네임</b></td>
       <td align=center><b>키</b></td>
       <td align=center><b>몸무게</b></td>
       <td align=center><b>특징</b></td>
       <td align=center><b>이동</b></td>
    </tr>
    </thead>
    <tbody>
<%
		for( MemberEntity stdt : list ) {
%>
    <tr id="teee">
       <td align=center id=<%= stdt.getId() %>><%= stdt.getId() %></td>
       <td align=center id=<%= stdt.getNickname() %>><%= stdt.getNickname() %></td>
       <td align=center id=<%= stdt.getHeight() %> ><%= stdt.getHeight() %></td>
       <td align=center id=<%= stdt.getWeight() %>><%= stdt.getWeight() %></td>
       <td align=center id=<%=stdt.getCharacteristic()%>><%= stdt.getCharacteristic()%></td>
       <td align=center><input type="button" value="확인" onclick="find(this)"></td>
    </tr>

<%
	    }
	}
%>
	</tbody>
    </table>
      <br>
        <script>
          var open1 = document.getElementById("spec");
          var scWidth = screen.availWidth;
          var scHeight = screen.availHeight;
          var left = (parseInt(scWidth)-400)/2;
          var top = (parseInt(scHeight)-700)/5;
          open1.style.visibility = "hidden";
          function go(){
            open1.style.visibility = "visible";
          }
          function find(btnValue){
        	  var parent = btnValue.parentNode;
        	  var parent2 = parent.parentNode;
        	  var friend = parent2.childNodes;
        	  var nickname = friend.item(3);
        	  window.open("other_size_search.jsp?nickname="+nickname.id,"","width=500,height=700,top='+top+', left='+left");
          }
        </script>
  </body>
