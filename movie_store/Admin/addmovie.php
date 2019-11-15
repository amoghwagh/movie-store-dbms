<?php session_start();
require('includes/config.php');
?>

<!DOCTYPE html>

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
<div id="pages">
	<div id="contents">
		<div class="posts2" style="margin-left:20%"">
			<h1 class="title" >Add Movie</h1>
			<div class="entries" >
				<form action='process_addmovie.php' method='POST' enctype="multipart/form-data">
				
						<br><b>Movie Name:</b><br>
						<input type='text' name='name' size='40'>
						<br><br>
						
						<b>Category:</b><br>
						<select  name="cat">
								<?php
									
										
			
											$query="select * from category ";
			
											$res=mysqli_query($conn,$query);
											
											while($row=mysqli_fetch_assoc($res))
											{
												echo "<option disabled>".$row['cat_name'];
												
												$q2 = "select * from subcat where cat_id = ".$row['cat_id'];
												
												$res2 = mysqli_query($conn,$q2) or die("Can't Execute Query..");
												while($row2 = mysqli_fetch_assoc($res2))
												{	
												
													echo '<option value="'.$row2['subcat_id'].'"> ---> '.$row2['subcat_name'];
												
													
												}
												
											}
											mysqli_close($conn);
								?>
						</select>
						<br><br>
						
						<b>Description:</b><br>
						<textarea cols="40" rows="6" name='description' ></textarea>
						<br><br>
						
						<b>Director:</b><br>
						<input type='text' name='dir' size='40'>
						<br><br>
						
						<b>Release Year:</b><br>
						<input type='text' name='ryear' size='40'>
						<br><br>
						
						<b>Duration</b><br>
						<input type='text' name='dur' size='40'>
						<br><br>
						
						<b>Buy Price:</b><br>
						<input type='text' name='bprice' size='40'>
						<br><br>
						
						<b>Rent Price:</b><br>
						<input type='text' name='rprice' size='40'>
						<br><br>
						
						<b>Image:</b><br>
						<input type='file' name='img' size='35'>
						<br><br>
						
						<input  type='submit'  value='   OK   '  >
				</form>
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
