<?php 
session_start();
require('includes/config.php');

	$q="select * from contact";
	 $res=mysqli_query($conn,$q) or die("Can't Execute Query...");
	?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<?php
			include("includes/head.inc.php");
		?>
		<style>
			table{padding:5px;border:10px solid gray}
			td,th{padding:15px}
			
		</style>
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
<div id="pages">
	<div id="contents">
		<div class="posts2">
			<h1 class="title"></h1>
			<div class="entries">
				
					<table id="tab" WIDTH='100%'>
						<tr>
								<td WIDTH='10%' style="color:green"><b><u>SR.NO</u></b>
								<TD style="color:green" WIDTH='20%'><b><u>NAME</u></b>
								<TD style="color:green" WIDTH='20%'><b><u>EMAIL</u></b>
								<TD style="color:green" WIDTH='100%'><b><u>QUERY</u></b>
								<TD style="color:green" WIDTH='25%'><b><u>DELETE</u></b>
							
						</tr>
						<?php
							$count=1;
							while($row=mysqli_fetch_assoc($res))
							{
							echo '<tr>
										<td>'.$count.'
										<td>'.$row['con_name'].'
										<td>'.$row['con_email'].'
										<td id="tab">'.$row['con_query'].'
										<td><a href="process_del_contact.php?sid='.$row['con_id'].'"><img src="images/Delete.png" height="50" WIDTH="50" ></a>
												
									
									</tr>';
									$count++;
							}
						?>

					</TABLE>
				
			</div>
			
		</div>
		
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
