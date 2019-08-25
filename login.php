<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
session_start();
?>
<script type="text/javascript">
function validate()
{
var pwd = /^[0-9]*$/ ; 
var uname = /^[a-zA-Z]*$/ ;
      if(!document.doc.pwd.value.match(pwd))  
      	{  
			alert('Please input only numeric characters'); 
	   		document.doc.pwd.focus();
	   		return false;
	   }
	    if(!document.doc.uname.value.match(uname))  
      	{  
			alert('Please input only characters'); 
	   		document.doc.uname.focus();
	   		return false;
	   }
	   return true;

}
</script>


<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <form method="post"  action="#" name="doc" onsubmit="return validate()">
            <center>
                <h1 style="color:blue">Login Page</h1>
                Username:<input type="text" name="uname"/><br>
                Password:<input type="password" name="pwd"/><br>
                <input type="submit" name="login" value="Login"/><br>
                
            </center>
        </form>
        <?php
        if(isset($_POST['login']) && isset($_POST['uname']) && isset($_POST['pwd']))
        {
            include './dbcon.php';
            $qry1="select * from patel where username=:uname and password=:pwd";
            $stmt=$pdoconnect->prepare($qry1);
            $stmt->bindparam(':uname',$_POST['uname']);
            $stmt->bindparam(':pwd',$_POST['pwd']);
            $r=$stmt->execute();
           
            while($r=$stmt->fetch())    
            {
//                  if($q['username'] == $_GET['uname'] ) 
//                  {
                      $_SESSION['nm'] = $_POST['uname'];
                      header('location:display.php');
                      die(mysqli_error($pdoconnect));
                      
            }
            
        } 
          if(isset($_POST['login']))
          {
            $un=$_POST['uname'];
            $pwd=$_POST['pwd'];
            if($un=="admin" && $pwd=="123")
            {
               //$_SESSION['nms'] = $_POST['uname'];
                header('location:home.php');
            }
          else 
            {
                   header('location:login.php');
                   die(mysqli_error($pdoconnect));
             }
             
          }
       
         ?>
       
    </body>
</html>
