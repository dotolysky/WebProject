<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
		frame{
			width:1000px;
		}
		</style>
		<title>너의 사이즈는?</title>
	</head>
  <frameset rows="150px, 1*" border="0">
    <frame class="garo" src="head.jsp" scrolling="no" marginwidth="0" marginheight="0">
    <frameset cols="12%, 1*" border="0">
      <frame src="menubar.jsp" id="menu_bar" name="menu_bar" scrolling="no">
      <frame name="content" id="content" src="size_register.jsp">
  </frameset>
</html>