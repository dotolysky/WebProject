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
          <th>���̵�</th>
          <th><input type="text" name="id" id="id"></th>
          <th><input type="button" value="�ߺ�Ȯ��" width="150" onclick=id_check()></th>
        </tr>
        <tr>
          <th>��й�ȣ</th>
          <th><input type="password" name="password" id="password"></th>
        </tr>
        <tr>
          <th>��й�ȣ ��Ȯ��</th>
          <th><input type="password" name="passwordc" id="passwordc" onfocusout="check()"></th>
        </tr>
        <tr>
          <th>�г���</th>
          <th><input type="text" name="nickname" id="nickname"></th>
          <th><input type="button" value="�ߺ�Ȯ��" width="150" onclick=nick_check()></th>
        </tr>
				<tr>
					<th>Ű</th>
					<th><input type="text" name="height" id="height"></th>
				</tr>
				<tr>
					<th>������</th>
					<th><input type="text" name="weight" id="weight"></th>
				</tr>
				<tr>
					<th>�� �Դ� ��Ÿ��</th>
					<th><input type="text" name="characteristic" id="characteristic"></th>
				</tr>
				<tfoot>
				<tr>
					<th colspan="3" style="border-left:none; border-bottom:none; border-right:none;"><input type="button" value="ȸ������" onclick="last_check()" size="30" style="width:30%; height:30px"></th>
				</tr>
				</tfoot>
      </table>
      </form>
      </div>
      <div class="right_content">
      	<h1>�� �������� ���� ������ ����</h1>
      	<h3>������ ���</h3>
      	<p>�ڽ��� �� ����� �´� ����� ����ϴ� �κ��̴� ���� �����ߴ� ����� Ȯ���Ѵٸ� ����� �ʰ� ���� ����� ã�� ���� �ִ�.
      	�� ã�� ����� �ڽ��� ��￡ ���缭 �ش��ϴ� �κ��� �־��ָ� �ȴ�. ���� ��� �ҸŰ� 2��Ƽ ���� ������� �ڽ��� ��� �ʿ� �ҸŸ� 2��Ƽ ª�� �Ἥ
      	�ڽ��� ��ȣ�� �´� ��������� Ȯ���ϱ� ���ؼ���. ó������ �翬 �� ���� �������� �����Ͱ� ���̸� ���� ���� �� �� ������ �� ���Ű� ����������.
      	�α����� �Ǿ� ���� �ʴٸ� �ҿ��� ���� ������ �α����� �Ǿ� ���� �ʴٸ� �α��� ȭ������ �̵��ȴ�.
      	</p>
      	<h3>������ Ȯ��</h3>
      	<p>������ ��Ͽ��� ����ߴ� �����͵��� ��հ��� ���� ���� �����͵��� ����� �� �ڽ��� ����� Ȯ���� �� �ֵ��� ���ش�. �� �޴� ���� 
      	�α����� �Ǿ� ���� ������ '�ڽ�'�� �Ǵ��� �� ���⿡ �ƹ��� ���� Ȯ������ ���Ѵ�.</p>
      	<h3>�ٸ� ����� ������ Ȯ��</h3>
      	<p>�ش� �������� ó�� ����ϴ� ����ڰų� Ȥ�� ���ͳ����� ���� ��� ����ڵ��� �� ���������� Ȱ���� �������̰� �ȴ�. ������ �׷� ����鵵
      	���� �� �� �ְ� �����ֱ� ���� ���� �޴��ε�, ���� ��� ���θ������� �ش� ���� � ������ ����� �Ծ��� �� ���������� �����ش�.
      	�׸� �� �� ��ȭ�� ���ε� �г������� Ȯ���� �ڽŰ� ������ ����� ����� �׾� ���� �����͸� Ȯ�� �� �� �ִ�.</p>
      	<h3>���θ� �̵�</h3>
      	<p>�̷��� ���� �� �� �ִ� �غ�� �� �Ǿ����� ���� ��� ������� ���� �������� ����鵵 ���� ���̴�. �׷� ������� ���� �غ��ߴ�. �� ���θ���
      	Ư���� ���缭 �پ��� ���θ����� �غ��ص����� �ش� ���������� �ٷ� �̵��� �����ϴ�. ��� �߰��س��� �����̸� ���� ������� ���ɴ밡 �ִ� �������
      	���θ����� �پ��ϰ� �غ��ص״�.</p>
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
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			}
		}
		function id_check(){
			if(id.value == "") {
				alert("�Է��� ���̵� �����ϴ�.");
			}
			else {
				window.open("checkid.jsp?id="+id.value,""," width=400 height=150");
				check_id=true;
			}
			
		}
		function nick_check(){
			if(nickname.value == "") {
				alert("�Է��� ���̵� �����ϴ�.");
			}
			else {
				window.open("checknick.jsp?nickname="+nickname.value,"","width=300 height=150");
				check_nick=true;
			}
			
		}
		function last_check(){
			if((!check_id) || (!check_nick))
				alert("���̵� �г��� �ߺ�üũ�� ���ּ���.")
			else
				mem_form.submit();
		}
		function isNull(elm)
		{ 
		        //Null üũ �Լ�
		        var elm;
		        return (elm == null || elm == "" || elm == "undefined" || elm == " ") ? true : false
		}
	</script>
  </body>
</html>
