
<%@ page import=" java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%  String dbpass="qwq";
        //int count=0;
       // session.setAttribute("count",count);
       int numberRow=0;
       ResultSet res=null;
       String evaluated=null;
    	int user=Integer.parseInt(request.getParameter("user"));
    	String pass=request.getParameter("pass");
        session.setAttribute("users", user);
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/performanceapp","root","");
        String query = "select count(*) from student where studid like ('" + user +"')";
        Statement stat =con.createStatement();
        ResultSet rs = stat.executeQuery(query);
        while(rs.next()){
          numberRow = rs.getInt("count(*)");
        }
        if(numberRow!=0)
        {
    	 Statement st=con.createStatement();
    	 String qu="select * from student where studid like ('" + user +"')";
    	  res=st.executeQuery(qu);
         res.next();
         dbpass=res.getString(3);
        evaluated=res.getString(6);
       }
       
      
     
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
body{
 background-color:#ffce2b;
 color:#42413d;
 }
 button {
  border:3px solid #b2afac;
  border-radius:40px;
  padding:20px 20px;
  color:#ffce2b;
   background-color:#42413d;

  }
h2{
float:right;}
</style>
</head>
<body>
    <% if(numberRow!=0){
        if(evaluated.equals("tr")){
         %>  
    <% if(dbpass.equals(pass) && user==(Integer.parseInt(res.getString(1)))) { 
       Statement st2=con.createStatement();
    	 String qu2="select * from staff where class like ('" + res.getString(4) +"') and sec like ('" + res.getString(5) +"')";
    	 ResultSet res2=st2.executeQuery(qu2);
         while(res2.next())
         {
            Statement st3=con.createStatement();
    	String qu3="insert into stafflist values('"+res2.getString(1)+"','"+res2.getString(5)+"','"+res2.getString(6)+"')";
        int x=st3.executeUpdate(qu3);           
        } 
    %>
    <h2>Welcome <%= user %> !! </h2> <br/><br/><br/>
    <center><button id="myButton" class="float-left submit-button" >EVALUATE PERFORMANCE</button></center>
<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "evals.jsp";
    };</script>
    <% } else { %>
    <center><h3>YOU HAVE ENTERED WRONG ID/PASS !!</h3></center>
    <center><button id="myButton2" class="float-left submit-button" >LOGIN PAGE</button></center>
<script type="text/javascript">
    document.getElementById("myButton2").onclick = function () {
        location.href = "slogin.jsp";
    };
    </script>
    <% } }
     else { %>
    <center><p><h3>YOU HAVE ALREADY EVALUATED FOR THIS YEAR!!!</h3></p></center>
<center><p><h3>YOU CANT EVALUATE AGAIN!!!</h3></p></center>
    <center><button id="myButton6" class="float-left submit-button" >HOME PAGE</button></center>
<script type="text/javascript">
    document.getElementById("myButton6").onclick = function () {
        location.href = "home.jsp";
    };
    </script>
    <% } }
    else
    { %>
   <center><h3>YOU HAVE ENTERED WRONG ID/PASS !!</h3></center>
    <center><button id="myButton3" class="float-left submit-button" >LOGIN PAGE</button></center>
<script type="text/javascript">
    document.getElementById("myButton3").onclick = function () {
        location.href = "slogin.jsp";
    };
 </script>
    <% }%>

</body>
</html>
 