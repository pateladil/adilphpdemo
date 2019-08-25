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
        include './dbcon.php';
        $q="delete from patel where id=:id";
        $stmt=$pdoconnect->prepare($q);
        $stmt->bindparam(':id',$_GET['id']);
        $stmt->execute();
        header('location:display.php');
        ?>
    </body>
</html>
