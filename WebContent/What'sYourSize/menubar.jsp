<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta charset="utf-8">
	<style type="text/css">
	/*------------------------------------*\
	RESET
\*------------------------------------*/
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td{
	margin:0;
	padding:0;
}
table{
	border-collapse:collapse;
	border-spacing:0;
}
fieldset,img{ 
	border:0;
}
address,caption,cite,dfn,th,var{
	font-style:normal;
	font-weight:normal;
}
caption,th{
	text-align:left;
}
h1,h2,h3,h4,h5,h6{
	font-size:100%;
	font-weight:normal;
}
q:before,q:after{
	content:'';
}
abbr,acronym{
	border:0;
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
#home * {

 font-family: 'Godo', sans-serif;

}



/*------------------------------------*\
	MAIN
\*------------------------------------*/
html{
	font-family:Calibri, Arial, sans-serif;
	background:url(http://dl.dropbox.com/u/2629908/adaptive/img/css/grid.png) top center repeat-y #fff;
	background:#fff;
	color:#666;
	width:100%;
	height:100%;
	font-size-adjust:0.45;
	padding:0;
}
body{
	width:100%;
	padding:0;
	margin:0 auto;
}
h1{
	font-weight:bold;
	font-size:2em;
}
h2{
	font-weight:bold;
	font-size:1.5em;
}
small{
	color:#ccc;
}
a{
	color:#6b0c36;
	text-decoration:none;
	font-weight:bold;
}
a:hover{
	text-decoration:none;
}
p{
	margin-bottom:20px;
}






/*------------------------------------*\
	ACCORDION
\*------------------------------------*/
.accordion{
	width:940px;
	overflow:hidden;
	list-style:none;
	margin-bottom:20px;
	text-shadow:1px 1px 1px rgba(0,0,0,0.25);
}
.accordion li{
	float:left;
	width:20%;
	overflow:hidden;
	height:250px;
	-moz-transition:width 0.2s ease-out;
	-webkit-transition:width 0.2s ease-out;
	-o-transition:width 0.2s ease-out;
	transition:width 0.2s ease-out;
}
.accordion li:first-of-type{
	-moz-border-radius:10px 0 0 10px;
	-webkit-border-radius:10px 0 0 10px;
	-o-border-radius:10px 0 0 10px;
	border-radius:10px 10px 10px 10px;
}
.accordion li:last-of-type{
	-moz-border-radius:0 10px 10px 0;
	-webkit-border-radius:0 10px 10px 0;
	-o-border-radius:0 10px 10px 0;
	border-radius:10px 10px 10px 10px;
}
.accordion div{
	padding:10px;
}
.accordion:hover li{
	width:10%;
}
.accordion li:hover{
	width:60%;
}
.slide-01	{ background:#ffdddd; color:black; }
.slide-02	{ background:#eeffdd; color:black; }
.slide-03	{ background:#ddffdd; color:black; text-shadow:none; }
.slide-04	{ background:#ddddff; color:black; }
.slide-05	{ background:#ffddee; color:black; }






/*------------------------------------*\
	VERTICAL
\*------------------------------------*/
#vertical{
	width:95%;
	height:650px;
}
#vertical li{
	height:20%;
	width:100%;
	-moz-transition:height 0.2s ease-out;
	-webkit-transition:height 0.2s ease-out;
	-o-transition:height 0.2s ease-out;
	transition:height 0.2s ease-out;
}
#vertical li:first-of-type{
	-moz-border-radius:10px 10px 0 0;
	-webkit-border-radius:10px 10px 0 0;
	-o-border-radius:10px 10px 0 0;
	border-radius:10px 10px 0 0;
}
#vertical li:last-of-type{
	-moz-border-radius:0 0 10px 10px;
	-webkit-border-radius:0 0 10px 10px;
	-o-border-radius:0 0 10px 10px;
	border-radius:0 0 10px 10px;
}
#vertical:hover li{
	height:10%;
	width:100%;
}
#vertical li:hover{
	height:60%;
	width:100%;
}
.inlog{
	table-layout:fixed;
}
</style>
</head>

<body id="home">
             <div class="inlog" id="inlog">
             <form action="login.jsp" method="post" id="login_form">
		      
		      <table border="1">
		        <tr>
		          <th width="80px">���̵�</th>
		          <th><input type="text" id="login_id" name="id" style="width:98%;height:100%"></th>
		        </tr>
		        <tr>
		          <th>��й�ȣ</th>
		          <th><input type="password" id="passwd" name="passwd" style="width:98%;height:100%"></th>
		        </tr>
		       </table>
		        	<input type="button" value="�α���" onclick="empty_check()" size="30" style="width:50%;height:24px;float:left;")>
		       </form>
		        	<a href="member_register.jsp" target="content"><button style="width:50%;height:24px;">ȸ������</button></a>
		      </div>
			<div id="outlog"><a href="logout.jsp" onclick="reload2()" target="content"><button style="width:100%">�α׾ƿ�</button></a>
			<a href="upload.jsp" target="content"><button style="width:100%">���� �ø� ������ Ȯ��</button></a>
			</div>
			<br>
     <% boolean status = true; 
  request.setCharacterEncoding("EUC-KR");
  String id = (String)session.getAttribute("id");
  String nickname = (String)session.getAttribute("nickname");
  if(id!=null){
     %>
  
     <script>
        var inlog = document.getElementById("inlog");
        var outlog = document.getElementById("outlog");
        inlog.style.display = "none";
        outlog.style.display = "block";
     </script>
     <% 
  }
     else{
        %>
        <script>
         inlog.style.display = "block";
        outlog.style.display = "none";
        </script>
        <%
     }
  %>
	
<ul class="accordion" id="vertical">
	
	<li class="slide-01">
		<div>
			<h2><a href="size_register.jsp" target="content">������ ���</a></h2>
			<p>������ ��� �κ� <br><br><br> �α����� �Ǿ� ���� ���� ���·� ��� ��ư�� �����ٸ� �α��� ȭ������ �̵��ȴ�.</p>
		</div>
	</li>
	<li class="slide-02">
		<div>
			<h2><a href="size_check2.jsp" target="content">������ Ȯ��</a></h2>
			<p>�� ������ Ȯ�� <br><br><br> �α����� �Ǿ� ���� ������ ���� 0���� ǥ�õȴ�.</p>			
		</div>
	</li>
	<li class="slide-03">
		<div>
			<h2><a href="other_size.jsp" target="content">�ٸ� ����� <br> ������ Ȯ��</a></h2>
			<p>��� ����� ������ Ȯ�� <br><br><br> ��ü ȸ���� ���� ����� Ȯ���Ѵ�.</p>			
		</div>
	</li>
	<li class="slide-04">
		<div>
			<h2><a href="move_shopping1.jsp" target="content">���θ� �̵�</a></h2>
			<p>��ǥ���� ���θ� Ȯ�� <br><br><br> ��ǥ���� ���θ��� ���� ����� ��ũ�� ���ԵǾ��ִ�</p>
		</div>
		
	</li>
</ul>
	<script>
		var id = document.getElementById("login_id");
		var passwd = document.getElementById("passwd");
		var log_form = document.getElementById("login_form");
		function empty_check(){
			if((!isNull(id.value)) && (!isNull(passwd.value))){
					log_form.submit();
			}
			else{
				alert("���̵�� ��й�ȣ�� ��� �Է����ּ���!");
			}
		}
       function reload(){
          window.location.reload();
       }
       function reload2(){
    	   top.window.location.reload();
       }
       function isNull(elm)
       { 
               //Null üũ �Լ�
               var elm;
               return (elm == null || elm == "" || elm == "undefined" || elm == " ") ? true : false
       }
       window.setTimeout('window.location.reload()',120000);
    </script>
</body>
</html>