<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="EUC-KR">
		<style type="text/css">
			a{
				text-decoration: none;
			}
      .content{
        position: relative;
        margin:0 auto;
      }
      .content table tfoot tr th{
      	border:none;
      }
		</style>
		<title>head</title>
	</head>
  <body>
	<form action="login.jsp">
      <div class="content">
      <table border="1">
        <tr>
          <th>아이디</th>
          <th><input type="text" id="id" name="id"></th>
        </tr>
        <tr>
          <th>비밀번호</th>
          <th><input type="password" id="passwd" name="passwd"></th>
        </tr>
        <tfoot>
        <tr>
        	<th colspan="2"><input type="submit" value="로그인" size="30" style="width:50%;height:100%")></th>
        </tr>
        </tfoot>
      </table>
      </div>
	</form>
  </body>
</html>
