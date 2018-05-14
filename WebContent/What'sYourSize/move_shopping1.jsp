<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
  a{text-decoration: none;}
  h1{text-align: center;}
  .music_top{text-align: center;}
  h1 a{font-family: 'Comic Sans MS';}
  nav ul{list-style:none; padding-left:0px;  }
  nav ul li{display: inline;}
  table tr th img{width:200px; height:200px}
  button{position:fixed;right:10px;bottom:0px;z-index:1000}
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
<title>Insert title here</title>
</head>
<body id="all">
   <header>
       <h1><a id="music_logo" href="move_shopping1.jsp" target="_self">���θ� ��� </a></h1>
   </header>
   <nav class="music_top">
       <ul>
           <li><a href="#s1" target="_self">���Ż� �����</a></li>
           <li><a href="#s2" target="_self">ũ���</a></li>
           <li><a href="#s3" target="_self">�÷��̾�</a></li>
           <li><a href="#s4" target="_self">���ｺ���</a></li>
           <li><a href="#s5" target="_self">LF��</a></li>
           <li><a href="#s6" target="_self">SSF��</a></li>
       </ul>
       <h5>�ش� ������ ������ Ŭ���ϸ� �ش� �������� ����˴ϴ�.</h5>
   </nav>
   <div class="contents">
     <table>
     <%
   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://localhost:3307/size";
   
   try {
      
      Connection conn = DriverManager.getConnection(url,"root","1234");
      Statement stmt = conn.createStatement();
      
      String sql = "SELECT * FROM mall";
      ResultSet rs = stmt.executeQuery(sql);
      
%>
     <%while(rs.next()){
         String link = rs.getString(1);
         String imgsrc = rs.getString(2);
         String title = rs.getString(3);
         String detail = rs.getString(4);
         String store = rs.getString(5);
         String mall_id = rs.getString(6);
   %>
   
   
   
       <tr>
         <th rowspan="2"><a href="<%=link%>" target="_blank"><img src="<%=imgsrc%>"></a></th>
         <td><h2 id=<%=mall_id %>><%=title %></h2><%=detail %></td>
       </tr>
       <tr><td><%=store %></td></tr>
   <%
     }
     rs.close();
 }
 catch(Exception e) {
    out.println("MySql �����ͺ��̽� univdb�� student ��ȸ�� ������ �ֽ��ϴ�. <hr>");
     out.println(e.toString());
     e.printStackTrace();
 }

   %>
     </table>
     <button><a href="#music_logo">���</a></button>
   </div>
</body>
</html>