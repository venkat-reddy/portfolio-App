<?php     //start php tag
//include connect.php page for database connection
Include('connect.php')
//if submit is not blanked i.e. it is clicked.
If(isset($_REQUEST['submit'])!='')
{
If($_REQUEST['name']=='' || $_REQUEST['email']=='' || $_REQUEST['phone']==''|| $_REQUEST['message']=='')
{
Echo "please fill the empty field.";
}
Else
{
$sql="insert into mobile-app-portfolio(name,email,phone,message) values('".$_REQUEST['name']."', '".$_REQUEST['email']."', '".$_REQUEST['phone']."', '".$_REQUEST['message']."')";
$res=mysql_query($sql);
If($res)
{
Echo "Record successfully inserted";
}
Else
{
Echo "There is some problem in inserting record";
}

}
}

?>