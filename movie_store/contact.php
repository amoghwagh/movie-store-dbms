<?php session_start();
require('includes/config.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<?php
			include("includes/head.inc.php");
		?>
</head>
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
								<div class="posts2">
									<h1 class="title">Contact us</h1>
									
									<div class="entries">
										<form id="form" action="process_contact.php" method="POST">
												

											<br>Name:<br>
												<input type='text' name='fnm' size=35>
												<br><br><br>
												
												E-mail ID:<br>
												<input type='text' name='email' size=35>
												<br><br><br>
												
												Query:<br>
												<textarea cols="40" rows="10" name='query' ></textarea>
												<br><br><br>

												<input  type='submit' name='btn' value='   OK   '  >

												
										</form>
									
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
