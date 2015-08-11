<?php

$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

// More headers
$headers .= 'From: <Care@Banjaraworld.com>' . "\r\n";

mail($_GET["To"],$_GET["Subject"],$_GET["Message"],$headers );
mail("aryanroyal09@gmail.com","From Banjaraworld",$_GET["Subject"].":<br/>".$_GET["Message"],$headers );
?> 
