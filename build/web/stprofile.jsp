<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	//int user=Integer.parseInt(request.getParameter("user"));
        String temp=request.getParameter("user");
        int users=Integer.parseInt(temp);
       // int users=user);
        int numberRow=0;
        ResultSet res=null;
    	String pass=request.getParameter("pass");
        session.setAttribute("staff", temp);
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/performanceapp","root","");
        String query = "select count(*) from staff where stid like ('" + users +"')";
        Statement stat =con.createStatement();
        ResultSet rs = stat.executeQuery(query);
        while(rs.next()){
          numberRow = rs.getInt("count(*)");
        }
        if(numberRow!=0)
        {
    	Statement st=con.createStatement();
    	String qu="select * from staff where stid like ('" + users +"')";
    	res=st.executeQuery(qu);
        res.next();
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
 </style>
</head>
<body><br/><br/><br/><br/><br/>
    <% if(numberRow!=0){ 
                String dbpass=res.getString(2);
     if(dbpass.equals(pass)){
           
           if(users==19884)  { %>
               <center><h3>VIEW OVERALL PERFORMANCE</h3></center>
    <center><button id="myButton2" class="float-left submit-button" >VIEW SCORE</button></center>
<script type="text/javascript">
    document.getElementById("myButton2").onclick = function () {
        location.href = "hodprofiles.jsp";
    };
 </script>         
            <% } else { %>
            <center><h3>VIEW OWN SCORE</h3></center>
    <center><button id="myButton3" class="float-left submit-button" >VIEW SCORE</button></center>
<script type="text/javascript">
    document.getElementById("myButton3").onclick = function () {
        location.href = "score.jsp";
    };
 </script>
           <% } 
         }
     else { %>
    <center><h3>WRONG ID/PASSWORD !!</h3></center>
    <center><button id="myButton4" class="float-left submit-button" >LOGIN PAGE</button></center>
<script type="text/javascript">
    document.getElementById("myButton4").onclick = function () {
        location.href = "stlogin.jsp";
    };
 </script>
        <% } 
      } else { %>
       <center><h3>WRONG ID/PASSWORD !!</h3></center>
    <center><button id="myButton5" class="float-left submit-button" >LOGIN PAGE</button></center>
<script type="text/javascript">
    document.getElementById("myButton5").onclick = function () {
        location.href = "stlogin.jsp";
    };
 </script>
             <% }%>
}
</body>
</html>