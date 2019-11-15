<?php
require('includes/config.php');
 session_start();
	$cat=$_GET['subcatid'];
	$totalq="select count(*)\"total\" from movies where mov_cat='$cat'";
	$totalres=mysqli_query($conn,$totalq) or die("Can't Execute Query...");
	$totalrow=mysqli_fetch_assoc($totalres);
	$page_per_page=6;
	$page_total_rec=$totalrow['total'];
	$page_total_page=ceil($page_total_rec/$page_per_page);
	
	if(!isset($_GET['page']))
	{
		$page_current_page=1;
	}
	else
	{
		$page_current_page=$_GET['page'];
	}

?>
<!DOCTYPE html">

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
									<h1 class="titles"><?php echo $_GET['subcatnm'];?></h1>
									<div class="entries1">
										
										<table id="tab" border="1px">
											<br><br><br><br><br>
											<?php
												
												$k=($page_current_page-1)*$page_per_page;
											
												$query="select * from movies where mov_cat='$cat' LIMIT ".$k .",".$page_per_page;
	
												$res=mysqli_query($conn,$query) or die("Can't Execute Query...");
	
												$count=0;
												while($row=mysqli_fetch_assoc($res))
												{
													if($count==0)
													{
														echo '<tr>';
													}	
													echo '<td valign="top" width="20%" align="center">
														<a href="detail.php?id='.$row['mov_id'].'&cat='.$_GET['subcatnm'].'">
														<img src="'.$row['mov_img'].'" width="150" height="250">
														<br>'.$row['mov_name'].'</a>
													</td>';
													$count++;							
													
													if($count==2)
													{
														echo '</tr>';
														$count=0;
													}
												}
											?>
											
										</table>
										
										
										<br><br><br>
										<center>
										<?php
											if($page_current_page>1)
											{	
												echo '<a href="movielist.php?subcatid='.$_GET['subcatid'].'&subcatnm='.$_GET['subcatnm'].'&page='.($page_current_page-1).'">Previous</a>';
											}
											
											for($i=1;$i<=$page_total_page;$i++)
											{
												echo '&nbsp;&nbsp;<a href="movielist.php?subcatid='.$_GET['subcatid'].'&subcatnm='.$_GET['subcatnm'].'&page='.$i.'">'.$i.'</a>&nbsp;&nbsp;';
											}

											if($page_total_page>$page_current_page)
											{
												echo '<a href="movielist.php?subcatid='.$_GET['subcatid'].'&subcatnm='.$_GET['subcatnm'].'&page='.($page_current_page+1).'">Next</a>';
											}
											
											
											
											
										?>
										</center>
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
