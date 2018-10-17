<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
        int score=0;
        int evalstaff=Integer.parseInt(request.getParameter("teacher"));
    	String qu1a=request.getParameter("qu1");
        String qu2a=request.getParameter("qu2");
        String qu3a=request.getParameter("qu3");
        String qu4a=request.getParameter("qu4");
        String qu5a=request.getParameter("qu5");
        if(qu1a.equals("Excellent"))
         score=score+100;
        if(qu1a.equals("Average"))
         score=score+50;
        if(qu1a.equals("Satisfactory"))
         score=score+10;
        
        if(qu2a.equals("Excellent"))
         score=score+100;
        if(qu2a.equals("Average"))
         score=score+50;
        if(qu2a.equals("Satisfactory"))
         score=score+10;
        
        if(qu3a.equals("Excellent"))
         score=score+100;
        if(qu3a.equals("Average"))
         score=score+50;
        if(qu3a.equals("Satisfactory"))
         score=score+10;
        
        if(qu4a.equals("Excellent"))
         score=score+100;
        if(qu4a.equals("Average"))
         score=score+50;
        if(qu4a.equals("Satisfactory"))
         score=score+10;
        
        if(qu5a.equals("Excellent"))
         score=score+100;
        if(qu5a.equals("Average"))
         score=score+50;
        if(qu5a.equals("Satisfactory"))
         score= score+10;
        Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/performanceapp","root","");
    	Statement st=con.createStatement();
    	String qu="select * from  score where stid like ('" + evalstaff +"')";
    	ResultSet res=st.executeQuery(qu);
        res.next();
        float scor=(score/500)*100;
        int scores=Integer.parseInt(res.getString(4));
        score=(int)(scor+scores)/2;
        Statement st1=con.createStatement();
        String qu1="update score set scores='"+score+"' where stid like ('" + evalstaff +"')";
       int res1 =st1.executeUpdate(qu1);
        
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

    
    <% if(res1>0){
        Statement st2=con.createStatement();
        String qu2="delete from stafflist where staff1 like ('" + evalstaff +"')";
        int res2 =st2.executeUpdate(qu2);
        int numberRow=0;
        String query = "select count(*) from stafflist";
        Statement stat =con.createStatement();
        ResultSet rs = stat.executeQuery(query);
        while(rs.next()){
          numberRow = rs.getInt("count(*)");
        }
        if(numberRow !=0) {%>      
        <center><h3>EVALUATE OTHER STAFF</h3></center>
    <center><button id="myButton3" class="float-left submit-button" >EVALUATE PERFORMANCE</button></center>
<script type="text/javascript">
    document.getElementById("myButton3").onclick = function () {
        location.href = "evals.jsp";
    };
 </script>
    <%}    else { 
       int userid = (Integer)session.getAttribute("users") ;         //int use=Integer.parseInt(username);
       // Integer.parseInt(session.getAttribute("users"));
        Statement st3=con.createStatement();
    	String qu3="update student set evaluated='fa' where studid like ('"+ userid +"') ";
        int x=st3.executeUpdate(qu3); 
    %>
        <center><h3>LOGOUT ACCOUNT!!</h3></center>
    <center><button id="myButton2" class="float-left submit-button" >LOGOUT PAGE</button></center>
<script type="text/javascript">
    document.getElementById("myButton2").onclick = function () {
        location.href = "home.jsp";
    };
 </script>
         <%}
}%>
    

</html>
