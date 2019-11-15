<?php session_start();

require('includes/config.php');

	if(!empty($_POST))
	{
		$msg=array();
		
		if(empty($_POST['usrnm']))
		{
			$msg[]="Invalid User";
		}
		
		if(empty($_POST['pwd']))
		{
			$msg[]="Incorrect Password";
		}
		
		
		if(!empty($msg))
		{
			echo '<b>Error:-</b><br>';
			
			foreach($msg as $k)
			{
				echo '<li>'.$k;
			}
		}
		

		else{
			
			$unm=$_POST['usrnm'];
			
			$q="select * from users where user_username='$unm'";
			
			$res=mysqli_query($conn,$q) or die("wrong query");
			
			$row=mysqli_fetch_assoc($res);
			
			if(!empty($row))
			{
				if($_POST['pwd']==$row['user_passwd'])
				{
					$_SESSION=array();
					$_SESSION['unm']=$row['user_username'];
					$_SESSION['uid']=$row['user_passwd'];
					$_SESSION['status']=true;
					
					if($_SESSION['unm']!="admin")
					{
						header("location:index.php");
					}
					else
					{
						header("location:admin/index.php");
					}
				}
				
				else
				{
					echo 'Password is Incorrect';
				}
			}
			else
			{
				echo 'Invalid User';
			}
		}
	
	}
	else
	{
		header("location:index.php");
	}
			
?>