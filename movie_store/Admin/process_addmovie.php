<?php
require('includes/config.php');

	if(!empty($_POST))
	{
		$msg=array();
		if(empty($_POST['name']) || empty($_POST['description']) || empty($_POST['dir'])|| empty($_POST['dur']) || empty($_POST['ryear']) || empty($_POST['bprice']) || empty($_POST['rprice']))
		{
			$msg[]="Please fulfil all the requirements";
		}
		if(!(is_numeric($_POST['bprice'])) || !(is_numeric($_POST['rprice'])))
		{
			$msg[]="Price must be in Numeric Format...";
		}
		if(!(is_numeric($_POST['ryear'])))
		{
			$msg[]="Release Year must be in Numeric Format...";
		}
		
		if(empty($_FILES['img']['name']))
		$msg[] = "Please provide a file";
	
		if($_FILES['img']['error']>0)
		$msg[] = "Error uploading file";
		
				
		if(!(strtoupper(substr($_FILES['img']['name'],-4))==".JPG" || strtoupper(substr($_FILES['img']['name'],-5))==".JPEG"|| strtoupper(substr($_FILES['img']['name'],-4))==".GIF"))
			$msg[] = "Wrong file  type";
			
		if(file_exists("../upload_image/".$_FILES['img']['name']))
			$msg[] = "File already uploaded. Please do not updated with same name";
		
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
			move_uploaded_file($_FILES['img']['tmp_name'],"../upload_image/".$_FILES['img']['name']);
			$m_img = "upload_image/".$_FILES['img']['name'];	
			$m_nm=$_POST['name'];
			$m_cat=$_POST['cat'];
			$m_desc=$_POST['description'];
			$m_dir=$_POST['dir'];
			$m_ryear=$_POST['ryear'];
			$m_dur=$_POST['dur'];
			$m_bprice=$_POST['bprice'];
			$m_rprice=$_POST['rprice'];			
			
			$query="insert into movies(mov_name,mov_cat,mov_desc,mov_dir,mov_year,mov_duration,mov_buy_price,mov_rent_price,mov_img)
			values('$m_nm',$m_cat,'$m_desc','$m_dir',$m_ryear,'$m_dur',$m_bprice,$m_rprice,'$m_img')";
			
			mysqli_query($conn,$query) or die($query."Can't Connect to Query...");
			header("location:addmovie.php");
		
		}
	}
	else
	{
		header("location:index.php");
	}
?>
	
	