<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title align="center">STAFF LOGIN PAGE</title>
<style>
body{
 background-color:#ffce2b;
 color:#42413d;
 }
 div input{
 border:3px solid #b2afac;
  border-radius:40px;
  padding:20px 20px;
  color:#ffce2b;
   background-color:#42413d;
 }
</style>
</head>
<body>
<p><center><h2>STAFF LOGIN PAGE</h2><center></p>
<br/>
<center><form action="stprofile.jsp" align="center">
	<h4>USER-ID : </h4><input type="text" name='user' required autofocus pattern="\d{5}"/>
        <h4><br>PASSWORD  :</h4> <input type="password" name="pass" required/><br/><br/><br/>
      <div><input type="submit" value="LOGIN"/><div>
	  </center>
</form>
</body>
</html>