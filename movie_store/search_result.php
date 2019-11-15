<?php
require('includes/config.php');
 session_start();
	$search=$_GET['s'];
	$query="select * from movies where mov_name like '%$search%'";
	
	$res=mysqli_query($conn,$query) or die("Can't Execute Query...");

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
				<div id="page">
							<div id="content">
								<div class="posts1">
									<h1 class="titles"><?php echo @$_GET['cat'];?></h1>
									<div class="entries1">
										
										<table id="tab" border="1px">
											<?php
												$count=0;
												while($row=mysqli_fetch_assoc($res))
												{
													if($count==0)
													{
														echo '<tr>';
													}
													
													echo '<td valign="top" width="20%" align="center">
														<a href="detail.php?id='.$row['mov_id'].'">
														<img src="'.$row['mov_img'].'" width="80" height="100">
														<br>'.$row['mov_name'].'</a>
													</td>';
													$count++;							
													
													if($count==4)
													{
														echo '</tr>';
														$count=0;
													}
												}
											?>
											
										</table>
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
