<?php
require('includes/config.php');
	if(empty($_POST['subcatnm']))
		{
			echo "No Sub=category selected";
			
		}
		else
		{
			$cid=$_POST['subcatnm'];
			
			$q="delete from subcat where subcat_id = $cid";
			
			mysqli_query($conn,$q) or die("Delete a valid Sub-Category...");	
			
			$q = "delete from movies where mov_cat = ".$cid;
			mysqli_query($q,$conn);
			
			header("location:category.php");
		}
?>
	
	