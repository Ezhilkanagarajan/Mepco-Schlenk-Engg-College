+<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/performanceapp","root","");
    	Statement st=con.createStatement();
    	String qu="select staff1,stname,subject from stafflist";
    	ResultSet res=st.executeQuery(qu);
        
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
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
<body>
    <center>
	<br/>
	<p><h2>PERFORMANCE EVALUATION</h2></p>
	    <br/><p><h3>1.Select the staff from staff list</h3></p>
		<p><h3>2.Select options for all questions</h3></p>
		<p><h3>3.Click submit button</h3></p><br/><br/><br/><br/>
    <form action="evalac.jsp">
         <p><h3>Staff List:</h3></p>
        <% while(res.next()){%>
    <p><h3>Id:<%=res.getString(1)%>&nbsp;&nbsp;Name:<%=res.getString(2)%>&nbsp;&nbsp;&nbsp;Subject:<%=res.getString(3)%><input type="radio" name="teacher" value="<%=res.getString(1)%>" required/></h3></p><br/>
        <%}%>
        <p><h3>Questions:</h3></p>
        <h3>Is the staff's voice audible?</h3>
        <input type="radio" name="qu1" value="Excellent" required/>Excellent&nbsp;
        <input type="radio" name="qu1" value="Average"/>Average
        <input type="radio" name="qu1" value="Satisfactory"/>Satisfactory&nbsp;
        <br>
        <h3>Is the staff impartial?</h3>
        <input type="radio" name="qu2" value="Excellent" required/>Excellent&nbsp;
        <input type="radio" name="qu2" value="Average"/>Average&nbsp;
        <input type="radio" name="qu2" value="Satisfactory"/>Satisfactory&nbsp;
        <br>
        <h3>Does the staff arrive on time to the class?</h3>
        <input type="radio" name="qu3" value="Excellent" required/>Excellent&nbsp;
        <input type="radio" name="qu3" value="Average"/>Average&nbsp;
        <input type="radio" name="qu3" value="Satisfactory"/>Satisfactory&nbsp;
        <br>
        <h3>Does the staff complete the syllabus on time?</h3>
        <input type="radio" name="qu4" value="Excellent" required/>Excellent&nbsp;
        <input type="radio" name="qu4" value="Average"/>Average&nbsp;
        <input type="radio" name="qu4" value="Satisfactory"/>Satisfactory&nbsp;
        <br>
        <h3>Does the staff explain the concept clearly?</h3>
        <input type="radio" name="qu5" value="Excellent"required/>Excellent&nbsp;
        <input type="radio" name="qu5" value="Average"/>Average&nbsp;
        <input type="radio" name="qu5" value="Satisfactory"/>Satisfactory&nbsp;
        <br/><br/>
        <div><input type="submit" value="SUBMIT"/></div>

    </form>
	</center>
</body>
</html>