<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
        String temp=(String)session.getAttribute("staff");
        int staffid=Integer.parseInt(temp);
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/performanceapp","root","");
    	Statement st=con.createStatement();
    	String qu="select * from score join staff where score.stid=staff.stid and score.class=staff.class and score.sec=staff.sec order by scores";
    	ResultSet res=st.executeQuery(qu);
       
        
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
<body>
    <center><p><h3>DEPARTMENT'S SCORE PAGE !!</h3></p></center>
<center><table>
        <tbody>
            <tr>
                
                <th><h3>Staff Name</h3></th>&nbsp;&nbsp;
                <th><h3>Staff Id</h3></th>&nbsp;&nbsp;
                <th><h3>Class</h3></th>&nbsp;&nbsp;
                <th><h3>Section</h3></th>&nbsp;&nbsp;
                <th><h3>Score</h3></th>&nbsp;&nbsp;
                <th><h3>Subject</h3></th>
            </tr>
    <% while(res.next())
    {%>
    
    <tr>
        <td><h3><%=res.getString(9)%></h3></td>&nbsp;
        <td><h3><%=res.getString(1)%></h3></td>&nbsp;
        <td><h3><%=res.getString(3)%></h3></td>&nbsp;
        <td><h3><%=res.getString(2)%></h3></td>&nbsp;
        <td><h3><%=res.getString(4)%></h3></td>&nbsp;
        <td><h3><%=res.getString(10)%></h3></td>&nbsp;
    </tr>
   
   <% }%>
        </tbody>
    </table></center>
<br/><br/><br/><br/><br/>
    <center><h3>LOGOUT ACCOUNT!!</h3></center>
    <center><button id="myButton2" class="float-left submit-button" >LOGOUT PAGE</button></center>
<script type="text/javascript">
    document.getElementById("myButton2").onclick = function () {
        location.href = "home.jsp";
    };
 </script>
</body>
</html>