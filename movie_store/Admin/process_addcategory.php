<?php
require('includes/config.php');
	if(!empty($_POST))
	{
		$msg=array();
		if(empty($_POST['cat']))
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
			$cat=$_POST['cat'];
			$query="insert into category(cat_name) values('$cat')";
			mysqli_query($conn,$query) or die("Can't Execute...");
			mysqli_close($conn);
			header("location:category.php");
		}
	}
	else
	{
		header("location:index.php");
	}
?>
	
	