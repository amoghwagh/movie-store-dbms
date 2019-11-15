<?php
require('includes/config.php');
	if(!empty($_POST))
	{
		$msg=array();
		if(empty($_POST['del']))
		{
			$msg[]="Please fulfil all the requirements";
		}
		
		if(!empty($msg))
		{
			echo '<b>Error:-</b><br>';
			
			foreach($msg as $k)
			{
				echo '<li>'.$k;
			}
		}
		else
		{
			$delcat=$_POST['del'];
			$query="delete from category where cat_name ='$delcat' ";
			mysqli_query($conn,$query) or die("Can't Execute...");
			header("location:category.php");
		}
	}
	else
	{
		header("location:index.php");
	}
?>
	
	