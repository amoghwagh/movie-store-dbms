<?php 
session_start();
require('includes/config.php');
	 $q="call display()";
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
				
					<table id="tab" width="100%">
						<tr>
						<td align="center" colspan="8"><a href="addmovie.php">Add New Movie</a></td>
						</tr>
						<tr>
<td WIDTH='10%' style="color:darkgreen"><b><u>SR.NO</u></b></td>
<TD style="color:darkgreen" WIDTH='50%'><b><u>NAME</u></b></TD>
<TD style="color:darkgreen" WIDTH='20%'><b><u>Director</u></b></TD>
<TD style="color:darkgreen" WIDTH='20%'><b><u>Release Year</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>Buy PRICE</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>Rent PRICE</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>IMAGE</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>DELETE</u></b></TD>				
							
						</tr>
						<?php
							$count=1;
							while($row=mysqli_fetch_assoc($res))
							{
							echo '<tr>
										<td>'.$count.'
										<td>'.$row['mov_name'].'
										<td>'.$row['mov_dir'].'
										<td>'.$row['mov_year'].'
										<td>'.$row['mov_buy_price'].'
										<td>'.$row['mov_rent_price'];
				echo "<td><img src='../$row[mov_img]' width='50'/>";
										
										
									echo 	'<td><a href="process_del_movie.php?sid='.$row['mov_id'].'"><img src="images/delete.png" height="50" WIDTH="50" ></a>
												
									
									</tr>';
									$count++;
							}
						?>

					</TABLE>
				
			</div>
			
		</div>
		
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<!-- start footer -->
<div id="footer">
			<?php
				include("includes/footer.inc.php");
			?>
</div>
<!-- end footer -->
</body>
</html>
