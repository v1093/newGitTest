<html>
<head>
 <title> LOGIN </title>
</head>
<body bgcolor="cyan" text="black">
<h1 align="center">
   LOGIN </br>
<form action="login" method="get">

<%
String ipAddress = request.getHeader("X-FORWARDED-FOR");  
if(ipAddress == null) 
 {

  ipAddress = request.getRemoteAddr();  
      
  }
%>


<input type="hidden" name="ipadd" value="<%=ipAddress%>">
Username:<input type="text" name="uname"/><br>
Password:<input type="password" name="pwd"/><br>
<input type="submit" value="submit"><br>
NewUser:<a href="register.jsp">Click here to register</a>
</form>
</h1>
</body>
</html>