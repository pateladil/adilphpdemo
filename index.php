<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->



<html> 
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
// define variables and set to empty values
$nameErr = $pwdErr = $rnoErr = $genderErr =$hoberror=$brnerror= "";
$flag = 1;
if (isset($_POST['submit']))
{

   if(empty($_POST["uname"]))
     {
		$nameErr = "Name is required";
		$flag = 0;
                
     }
   if(empty($_POST["pwd"]))
     {
		$pwdErr = "password is required";
		$flag = 0;
     }      
    if(empty($_POST["rno"]))
     {
		$rnoErrErr = "Roll no is required";
		$flag = 0;
     }
     if(empty($_POST["gender"]))
     {
		$genderErr = "Gender is required";
		$flag = 0;
     }
     if(empty($_POST["hobbie"]))
     {
		$hoberror = "Name is required";
		$flag = 0;
     }
     if(empty($_POST["brn"]))
     {
		$brnerror = "Branch is required";
		$flag = 0;
     }
     if (!preg_match("/^[a-zA-Z ]*$/",$_POST['name']))
       {
       $nameErr = "Only letters and white space allowed";
	   $flag = 0;
       }

        if($flag == 1)
	{
		echo "write database code ";
	}
        else
	{
		echo "pls. check for all validations";
	}
}
?>
        <form method="post"> 
            <center>
                <table >
                    <th>
                    <tr><h1 style="color:blue">Registration Page</h1></tr>
                    <tr>Username:<input type="text" name="uname"/>
                   <span class="error">* <?php echo $nameErr;?> </span><br><br></tr>
                   
                    <tr> Password:<input type="password" name="pwd"/>
                    <span class="error">* <?php echo $pwdErr;?> </span><br><br>
                    
                    </tr>
                    <tr> Roll no:<input type="text" name="rno"/>
                    <span class="error">* <?php echo $rnoErr;?> </span><br><br></tr>
                    <tr> Gender:<input type="radio" name="gender" value="M">  <input type="radio" name="gender" value="F">
                    <span class="error">* <?php echo $genderErr;?> </span><br><br><tr>
                <tr>Select hobbies:<input type="checkbox" name="hobbie[]" value="Cricket">:Cricket
                <input type="checkbox" name="hobbie[]" value="Kabbadi">:Kabbadi
                <input type="checkbox" name="hobbie[]" value="pubg"> :Pubg
                <input type="checkbox" name="hobbie[]" value="pool">pool
                <span class="error">* <?php echo $hoberror;?> </span><br><br> </tr>
                <tr>Branch:<select name="brn" >
                    <option>--select--</option>
                    <option value="MCA">MCA</option>
                    <option value="MSCIT">MSCIT</option>
                    <option value="BCA">BCA</option>
                </select>
                <span class="error">* <?php echo $brnerror;?> </span><br><br></tr>
                
                <tr><input type="submit" name="submit" value="Register"/><br></tr>
                </th>
                </table>
            </center>
        </form>
        <?php
           if(isset($_POST['submit']))
           {
               include './dbcon.php';
               $hob=  implode($_POST['hobbie'],',');
                $qry="insert into patel(username,password,rno,gender,hobbies,branch) values(:uname,:pwd,:rno,:gen,:hob,:brn)";
                $stmt=$pdoconnect->prepare($qry);
                $stmt->bindparam(':uname',$_POST['uname']);
                $stmt->bindparam(':pwd',$_POST['pwd']);
                $stmt->bindparam(':rno',$_POST['rno']);
                $stmt->bindparam(':gen',$_POST['gender']);
                $stmt->bindparam(':hob',$hob);
                $stmt->bindparam(':brn',$_POST['brn']);
                $stmt->execute();    
                header('location:login.php');
           }
        ?>
    </body>
</html>
