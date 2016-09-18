<?php
$hostname="pdb3.awardspace.net"; //local server name default localhost
$username="1966971_venkat";  //mysql username default is root.
$password="Reddys2010@";       //blank if no password is set for mysql.
$database="1966971_venkat";  //database name which you created
$con=mysql_connect($hostname,$username,$password);
if(! $con)
{
die('Connection Failed'.mysql_error());
}

mysql_select_db($database,$con);
?>