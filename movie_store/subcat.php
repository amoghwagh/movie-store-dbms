<?php require("includes/config.php"); 
session_start();
	$cat=$_GET['cat_name'];
	$q = "select * from subcat where cat_id = ".$_GET['cat'];
	$res = mysqli_query($conn,$q) or die("Query Cannot Be Executed.");
	$row1 = mysqli_fetch_assoc($res);
	
	if($_GET['cat_name']==$row1['subcat_name'])
	{
		header("location:movielist.php?subcatid=".$row1['subcat_id']."&subcatnm=".$row1["subcat_name"]);
		
	}
?>
<!Doctype html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<?php
			include("includes/head.inc.php");
		?>
</head>

<body>
	<div id="header">
		<div id="menu">
			<?php
			include("includes/menu.inc.php");
			?>
		</div>
	</div>
				
	<div id="logo-wrap">
		<div id="logo">
			<?php
			include("includes/logo.inc.php");
			?>
		</div>
	</div>

	<div id="page">
		<div id="content">
			<div class="post">
				<h1 class="title"><?php echo $_GET['cat_name'];?></h1>
					<div class="entry">
						
					<?php
						Do
						{
										
						echo '<li><a href="movielist.php?subcatid='.$row1['subcat_id'].'&subcatnm='.$row1["subcat_name"].'">'.$row1['subcat_name'].'</a></li>';
						}
						while($row1 = mysqli_fetch_assoc($res))
						?>
							
					</div>
							
			</div>
						
		</div>
		<div id="sidebar">
		<?php
		include("includes/search.inc.php");
		?>
		</div>
		<div style="clear: both;">&nbsp;</div>
		</div>
		<div id="footer">
		<?php
		include("includes/footer.inc.php");
		?>
		</div>
</body>
</html>
