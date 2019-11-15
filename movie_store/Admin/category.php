<?php session_start();
require('includes/config.php');
?>
<!DOCTYPE>

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
		<div class="posts2" style="margin-left:20%">
			<h1 class="title"></h1>
			<div class="entries" style="min-height:200px">
				<form action='process_addcategory.php' method='POST'>
						<b style="color:green">ADD CATEGORY </b>
							<br/>
							<input type='text' name= 'cat' size='15'>
							
							<input type='submit'  value='  ADD  '>
							
							<br>
				</form>
				<hr>
				<form action='process_delcategory.php' method='POST'>
							<b style="color:green">DELETE CATEGORY </b>						
							<br>
								<select name="del">
									<?php
										$query="select * from category ";
										$res=mysqli_query($conn,$query);
										while($row=mysqli_fetch_assoc($res))
										{
											echo "<option>".$row['cat_name'];
										}
										mysqli_close($conn);
									?>
								</select>
						
						
							<input type='submit' value='  DELETE  '>
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
