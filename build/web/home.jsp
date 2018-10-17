<!DOCTYPE html>
<html>
<head>
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
  div{
  text-shadow: -4px 4px 6px #b2afac;
  }
</style>

</head>
<body align="center">
<br/>
<br/>
<div><center><p><h1>MEPCO SCHLENK ENGINEERING COLLEGE</h1></p> </center></div>
<div><marquee><h3>PERFORMANCE APPRAISAL</h3></marquee><div><br/><br/>
        <center><button id="myButton" class="float-left submit-button" >STUDENT LOGIN</button></center>
<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "slogin.jsp";
    };
</script>
<br/>
<br/>
<br/>
<br/>

<center><button id="myButton2" class="float-left submit-button" >STAFF LOGIN</button></center>
<script type="text/javascript">
    document.getElementById("myButton2").onclick = function () {
        location.href = "stlogin.jsp";
    };
</script>
</body>
</html>