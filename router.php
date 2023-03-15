<?php
   $selectOption = $_POST['cities'];
   echo htmlentities($_POST['cities'], ENT_QUOTES, "UTF-8");

   $url = $selectOption . ".php";
   echo $url;
   header("Location: $url");
?>