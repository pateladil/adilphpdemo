<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php session_start(); 
if(!isset($_SESSION['nm']))
{
    header('location:login.php');
}
?>

    
    <?php
       echo "welcome:-". $_SESSION['nm'] ;                                                                 
       
       
?>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
         
        
    
       
		<table  border=1 class="table table-bordered table-condensed">
    
        <tr>
            <th>Id</th>
            <th>Roll No</th>
            <th>Gender</th>
            <th>Hobbies</th>
            <th>Branch</th>
			  
        </tr>
    
    <tbody>
	    <?php
             include "dbcon.php"; 
	     $sql = "SELECT * from patel";
	     $q = $pdoconnect->query($sql);
		
            while ($r = $q->fetch()): ?>
            <tr>
                <td><?php echo($r['id']) ?></td>
                <td><?php echo ($r['rno']); ?></td>
                <td><?php echo($r['gender']); ?></td>
                <td><?php echo($r['hobbies']); ?></td>
                <td><?php echo($r['branch']); ?></td>
	        <td> <a href="update.php?id=<?php echo $r['id']  ?>" > update </td>
                <td> <a href="delete.php?id=<?php echo $r['id']  ?>" > delete </td>
            </tr>
            </tr>
        <?php endwhile; ?>
	  </tbody>
                </table>
<?php  echo "<a href=logout.php> logout </a>  " ;?>
    </body>
</html>
