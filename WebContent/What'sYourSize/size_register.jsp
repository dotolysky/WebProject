<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="ECU-KR">
		<style type="text/css">
			.member{position:absolute;
			top:10px;
			right:10px;}
			a{
				text-decoration: none;
			}
			.btn{background-color: #fff;
			border: 0px;}
			inlog{
			display:block;
			}
			outlog{
			display:none;
			}
			.top_part{
			height:350px;
			}
			.img_part{
				float:left;
			}
			.bottom_part{
			float:down;
			}
			.top_part tfoot th{
			border-top:none;
			}
			.top_part table{
				height:300px;
			}
			#longpan table{
				height:300px;
			}
			#longpan table tfoot{
			border-top:none;
			}
			.content1{
			width:50%;
			float:left;
			}
			.content2{
			width:50%;
			float:right;}
			table th input{
			width:98%; 
			height:100%; 
			text-align:center
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
  			<div class="content1">
			<iframe width="95%" height="320" src="https://www.youtube.com/embed/4bWJNifGFU4" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen="true"></iframe>
			<br><br>
			<iframe width="95%" height="320" src="https://www.youtube.com/embed/3dQ5N1bH7Ak" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen="true"></iframe>
			</div>
  			<div class="content2">
  			<button onclick="what_size()">사이즈 측정법</button><br>
			<div class="top_part">
				<nav class="img_part">
					<button class="btn"><img src="media/top.png" width="200px" height="300px" onclick="top_click()"></button><br>
				<form method="post" action="up_register.jsp" id="up_form">
						<span id="top_sector">
						<select name="top" id="top">
							<option value="outer">아우터</option>
							<option value="short">반팔티셔츠</option>
							<option value="long">긴팔티셔츠</option>
							<option value="shirt">셔츠</option>
						</select>
						<input type="button" value="선택" onclick="top_sel()">
						</span>
				</nav>
						<br>
					<div id="outer_p">
						<table border="1">
							<tr>
								<th>총장</th>
								<th><input name="total" type="text"></th>
							</tr>
							<tr>
								<th>어깨너비</th>
								<th><input name="shoulder" type="text"></th>
							</tr>
							<tr>
								<th>가슴단면</th>
								<th><input name="chest" type="text"></th>
							</tr>
							<tr>
								<th>소매길이</th>
								<th><input name="sleeve" type="text"></th>
							</tr>
							<tfoot>
							<tr>
								<th colspan="2"><input type="button" id="regi1" style="width:166px; height:50px; left:50%;" onclick="up_check()" value="등록"></th>
							</tr>
							</tfoot>
						</table>
					</div>
				</form>
		</div>
		<div class="bottom_part">
			<nav class="img_part">
				<button class="btn"><img src="media/bottom.png" width="200px" height="300px" onclick="botton_click()"></button><br>
			<form method="post" action="down_register.jsp" id="down_form">
				<div id="botton_sector">
					<select name="bottom_select" id="bottom_select">
						<option value="longp">긴바지</option>
						<option value="shortp">반바지</option>
						<option value="skirt">치마</option>
					</select>
					<input type="button" value="선택" onclick="bottom_sel()">
			</nav>
				</div>
				<div id="longpan">
				<table border="1">
					<tr>
						<th>총장</th>
						<th><input type="text" name="total"></th>
					</tr>
					<tr>
						<th>허리단면</th>
						<th><input type="text" name="waist"></th>
					</tr>
					<tr>
						<th>허벅지단면</th>
						<th><input type="text" name="thigh" id="not1"></th>
					</tr>	
					<tr>
						<th>밑위</th>
						<th><input type="text" name="bottom" id="not2"></th>
					</tr>
					<tr>
						<th>밑단단면</th>
						<th><input type="text" name="bottom_section"></th>
					</tr>
					<tfoot>
					<tr>	
						<th id="not5" colspan="2"><input type="button" id="regi2" style="width:166px; height:50px; left:50%;" onclick="down_check()" value="등록"></th>
					</tr>
					</tfoot>
				</table>
				
				</div>
			</form>
		</div>
		</div>
			<script>
				var p1 = document.getElementById("top_sector");
				var p2 = document.getElementById("botton_sector");
				var t1 = document.getElementById("outer_p");
				var t5 = document.getElementById("longpan");
				var btn = document.getElementById("regi1");
				var btn2 = document.getElementById("regi2");
				var not1 = document.getElementById("not1");
				var not2 = document.getElementById("not2");
				var bottom_select = document.getElementById("bottom");
				var up_form = document.getElementById("up_form");
				var down_form = document.getElementById("down_form");
				var id = "<%=id%>";
				function bottom_sel(){
					t5.style.visibility = "visible";
					var str2 = bottom_select.options[bottom_select.selectedIndex].value;
					if(str2 == "skirt"){
						not1.value = "존재하지 않음";
						not2.value = "존재하지 않음";
					}
				}
				function what_size(){
					window.open("http://store.musinsa.com/app/product/real_size#top","","width=361 height=930")
				}
				function up_check(){
					if(id != "null"){
						up_form.submit();
					}
					else{
						alert("로그인 화면으로 이동됩니다.");
						location.replace("member_login.jsp");
					}
				}
				function down_check(){
					if(id != "null"){
						down_form.submit();
					}
					else{
						alert("로그인 화면으로 이동됩니다.");
						location.replace("member_login.jsp");
					}
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
