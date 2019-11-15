<?php session_start();
if(isset($_GET['nm']) and isset($_GET['cat']) and isset($_GET['brate']) and isset($_GET['rrate']))
	{
		$_SESSION['cart'][] = array("nm"=>$_GET['nm'],"cat"=>$_GET['cat'],"brate"=>$_GET['brate'],"rrate"=>$_GET['rrate'],"rate"=>$_GET['brate']);
		header("location: viewcart.php");
	}
	else if(isset($_GET['id']))
	{
		$id = $_GET['id'];
		unset($_SESSION['cart'][$id]);
		header("location: viewcart.php");
	}
	else if(!empty($_POST))
	{
		foreach($_POST as $id=>$val)
		{
			$_SESSION['cart'][$id]['rate']=$val;												
			header("location: viewcart.php");
		}
	}


?>