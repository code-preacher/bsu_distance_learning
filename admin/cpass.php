<?php
session_start();
include('../inc/config.php');

if(isset($_POST['sub'])){
	$email=$_POST['email'];
	$pass=$_POST['pwd'];
	$phone=$_POST['phone'];

	$ql=mysqli_query($con,"update admin set email='$email',password='$pass',phone='$phone' where email='".$_SESSION['email']."'");

	if($ql){
		$_SESSION['pmsg']='<span style="color:green;">'."Data was successfully updated".'</span>';
		$_SESSION['email']=$email;
	}
	else{
		$_SESSION['pmsg']='<span style="color:red;">'."Data was not successfully updated".'</span>';    
	}
}

header("location:profile.php");
?>