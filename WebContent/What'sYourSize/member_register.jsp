<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
			.member{position:absolute;
			top:10px;
			right:10px;}
			a{
				text-decoration: none;
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
		.content{
			width:40%;
			height:100%;
			float:left;
			margin-left:5%;
		}
		.content table{
			width:500px;
			height:300px;
		}
		.content table th input{
			width:98%;
			height:100%;
		}
		.right_content{
			width:50%;
			height:100%;
			float:right;
			margin-right:5%;
		}
		</style>
		<title>head</title>
	</head>
  <body id="all">
  <%@ page import="java.util.ArrayList, size.MemberEntity" %>
  	<jsp:useBean id="stdtdb" class="size.MemberDatabase" scope="page" />
  	<div class="content">
		<form method="post" action="member_regi.jsp" id="member_form">
      <table border="1">
        <tr>
          <th>아이디</th>
          <th><input type="text" name="id" id="id"></th>
          <th><input type="button" value="중복확인" width="150" onclick=id_check()></th>
        </tr>
        <tr>
          <th>비밀번호</th>
          <th><input type="password" name="password" id="password"></th>
        </tr>
        <tr>
          <th>비밀번호 재확인</th>
          <th><input type="password" name="passwordc" id="passwordc" onfocusout="check()"></th>
        </tr>
        <tr>
          <th>닉네임</th>
          <th><input type="text" name="nickname" id="nickname"></th>
          <th><input type="button" value="중복확인" width="150" onclick=nick_check()></th>
        </tr>
				<tr>
					<th>키</th>
					<th><input type="text" name="height" id="height"></th>
				</tr>
				<tr>
					<th>몸무게</th>
					<th><input type="text" name="weight" id="weight"></th>
				</tr>
				<tr>
					<th>옷 입는 스타일</th>
					<th><input type="text" name="characteristic" id="characteristic"></th>
				</tr>
				<tfoot>
				<tr>
					<th colspan="3" style="border-left:none; border-bottom:none; border-right:none;"><input type="button" value="회원가입" onclick="last_check()" size="30" style="width:30%; height:30px"></th>
				</tr>
				</tfoot>
      </table>
      </form>
      </div>
      <div class="right_content">
      	<h1>웹 페이지에 대한 간단한 설명</h1>
      	<h3>사이즈 등록</h3>
      	<p>자신의 몸 사이즈에 맞는 사이즈를 등록하는 부분이다 옷을 구매했던 목록을 확인한다면 어렵지 않게 세부 사이즈를 찾을 수가 있다.
      	그 찾은 사이즈를 자신의 기억에 맞춰서 해당하던 부분을 넣어주면 된다. 예를 들어 소매가 2센티 정도 길었으면 자신이 샀던 옷에 소매를 2센티 짧게 써서
      	자신의 기호에 맞는 사이즈들을 확인하기 위해서다. 처음에는 당연 한 개의 옷이지만 데이터가 쌓이면 쌓일 수록 좀 더 수월한 옷 구매가 가능해진다.
      	로그인이 되어 있지 않다면 소용이 없기 때문에 로그인이 되어 있지 않다면 로그인 화면으로 이동된다.
      	</p>
      	<h3>사이즈 확인</h3>
      	<p>사이즈 등록에서 등록했던 데이터들을 평균값을 내서 넣은 데이터들의 평균을 내 자신의 사이즈를 확인할 수 있도록 해준다. 이 메뉴 역시 
      	로그인이 되어 있지 않으면 '자신'을 판단할 수 없기에 아무런 값도 확인하지 못한다.</p>
      	<h3>다른 사용자 사이즈 확인</h3>
      	<p>해당 페이지를 처음 사용하는 사용자거나 혹은 인터넷으로 옷을 샀던 사용자들은 이 웹페이지의 활동이 제한적이게 된다. 하지만 그런 사람들도
      	옷을 살 수 있게 도와주기 위해 만든 메뉴인데, 내가 사던 쇼핑몰에서는 해당 옷을 어떤 신장의 사람이 입었을 때 적합한지를 보여준다.
      	그를 좀 더 상세화한 것인데 닉네임으로 확인한 자신과 신장이 비슷한 사람이 쌓아 놓은 데이터를 확인 할 수 있다.</p>
      	<h3>쇼핑몰 이동</h3>
      	<p>이렇게 옷을 살 수 있는 준비는 다 되었지만 옷을 어디서 사야할지 감도 안잡히는 사람들도 있을 것이다. 그런 사람들을 위해 준비했다. 각 쇼핑몰의
      	특색에 맞춰서 다양한 쇼핑몰들을 준비해뒀으며 해당 웹페이지로 바로 이동이 가능하다. 계속 추가해나갈 예정이며 젊은 사람부터 연령대가 있는 사람들의
      	쇼핑몰까지 다양하게 준비해뒀다.</p>
      </div>
	

	<script>
		var id = document.getElementById("id");
		var passwd = document.getElementById("password");
		var passwdcheck = document.getElementById("passwordc");
		var nickname = document.getElementById("nickname");
		var mem_form = document.getElementById("member_form");
		var mem = 1;
		var check_id = false;
		var check_nick = false;
		function check()
		{
			if(passwd.value != passwordc.value){
				passwdcheck.value = "";
				alert("비밀번호가 일치하지 않습니다.");
			}
		}
		function id_check(){
			if(id.value == "") {
				alert("입력한 아이디가 없습니다.");
			}
			else {
				window.open("checkid.jsp?id="+id.value,""," width=400 height=150");
				check_id=true;
			}
			
		}
		function nick_check(){
			if(nickname.value == "") {
				alert("입력한 아이디가 없습니다.");
			}
			else {
				window.open("checknick.jsp?nickname="+nickname.value,"","width=300 height=150");
				check_nick=true;
			}
			
		}
		function last_check(){
			if((!check_id) || (!check_nick))
				alert("아이디나 닉네임 중복체크를 해주세요.")
			else
				mem_form.submit();
		}
		function isNull(elm)
		{ 
		        //Null 체크 함수
		        var elm;
		        return (elm == null || elm == "" || elm == "undefined" || elm == " ") ? true : false
		}
	</script>
  </body>
</html>
