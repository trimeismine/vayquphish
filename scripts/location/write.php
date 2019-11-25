<?php
$lat = $_GET["latitude"];
$long = $_GET["longitude"];
$file = fopen("data.txt", "a+");
fwrite($file,"Latitude: ".$lat."\n");
fwrite($file,"Longitude: ".$long."\n");
fclose($file);
?>