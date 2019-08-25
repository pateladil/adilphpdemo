<form action="#">
<?php
include './dbcon.php';
 $q="select *  from patel where  id=:id";
 $stmt=$pdoconnect->prepare($q);
 $stmt->bindparam(':id',$_GET['id']);
 $stmt->execute();
 while($r=$stmt->fetch())
         ?>
  <body>
        <form method="post"> 
            <center>
                <table>
                    <th>
                    <tr><h1 style="color:blue">Update Page</h1></tr>
                <tr><input type="hidden" name="id" value="<?php echo $r['id']; ?>"/><br></tr>
                  
                <tr> Roll no:<input type="text" name="rno" value="<?php echo $r['rno']; ?>"/><br></tr>
                    <tr> Gender:<input type="radio" name="gender" value="M" <?php echo $r['gender'] == "M" ? "checked" : ""; ?>/>:Male  <input type="radio" name="gender" value="F" <?php echo $r['gender'] == "F" ? "checked" : ""; ?>/>:Female<br><tr>
<!--                <tr>Select hobbies:<input type="checkbox" name="hobbie[]" value="<?php$r['hobbies'], "cricket"?>">:Cricket
                <input type="checkbox" name="hobbie[]" value="Kabbadi">:Kabbadi
                <input type="checkbox" name="hobbie[]" value="pubg"> :Pubg
                <input type="checkbox" name="hobbie[]" value="pool">pool
                <br>            </tr>-->
                <tr>Branch:<select name="brn" value="<?php echo $r['brn']; ?>">
                    <option >--select--</option>
                    <option value="MCA">MCA</option>
                    <option value="MSCIT">MSCIT</option>
                    <option value="BCA">BCA</option>
                </select><br></tr>
                
                <tr><input type="submit" name="update" value="Update"/><br></tr>
                </th>
                </table>
            </center>
        </form>
  </body>
<?php
if(isset($_GET['update']))
{
    include './dbcon.php';
    $hob=  implode(',', $_POST['hobbie']);
    $q="update patel set rno=:rno,gender=:gen,branch=:brn where id=:id";
    $stmt=$pdoconnect->prepare($q);
    $stmt->bindparam(':id',$_GET['id']);
    $stmt->bindparam(':rno',$_GET['rno']);
    $stmt->bindparam(':gen',$_GET['gender']);
   
    $stmt->bindparam(':brn',$_GET['brn']);
    
    $r=$stmt->execute();
    
        
    header('location:display.php');
}



?>