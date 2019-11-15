<?php
 session_start();
 extract($_POST);
 extract($_SESSION);
 
require('includes/config.php'); 	
	if(isset($submit))
	{
	$query="insert into purchase_details(pur_name,user_email,address,city,state,user_contact,pur_id) values('$name','$email','$address','$city','$state','$phone','$uid')";
	
	$res=mysqli_query($conn,$query) or die("Can't Execute Query...");
	}
?>
<style type="text/css">
	#end{
		font-size: 30px;
		font-family: Lucida Sans;
		font-weight: bold;
	}
</style>
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
							<h1 class="title">THANK YOU</h1>
							<div class="entries">
							
									<div id="end"><h4>THANK YOU FOR YOUR PURCHASE. YOUR MOVIE LINKS ARE SENT TO YOUR E-MAIL ID.<br>ENJOY🍿&#x1F601 </h4></div>
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
