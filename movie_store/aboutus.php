<?php session_start();?>

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
				<div id="page">
					<div id="content">
						<div class="posts3">
							<h1 class="title">About Us</h1>
							<div class="entries">
							
<a href="http://localhost/mini_project/movie_store/index.php"><br>Flix</a> is an online movies portal for buying and renting movies to the users.<br/>
 We provide best quality of the movies in our library and we have various Categories and Sub-Categories of movies through which the users can browse through and rent movies based on their moods. <br/>
  We also keep updating the movies at regular intervals.
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
