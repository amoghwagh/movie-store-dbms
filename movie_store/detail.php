<?php session_start();
	require('includes/config.php');
	$id=$_GET['id'];
	$q="select * from movies where mov_id=$id";
	$res=mysqli_query($conn,$q) or die("Can't Execute Query..");
	$row=mysqli_fetch_assoc($res);
?>
<style type="text/css">
	td{
		font-size: 25px;
	}
	td a:hover{
	}
</style>
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
									<h1 class="title"><?php echo $row['mov_name'];?></h1>
									<div class="entries">
										<?php
										
											echo '<table id="tab" border="0" width="50%">
												 <tr>
													<td><hr color="green"></td>
												</tr>
												 <tr align="center" bgcolor="#3F3F3F">
													 <td>Movie Details</td>
												</tr>
												<tr>
													<td><hr color="green"></td>
												</tr>
											 </table>
											
											<table id="tab" border="0"  width="60%" bgcolor="4F4F4F">
												<tr> 
													
													<td width="100%" rowspan="3">
														<img src="'.$row['mov_img'].'" width="100%">
													
													</td>
												</tr>
											
												<tr> 
													<td width="50%" height="100%">
														<table border="0"  width="100%" height="100%">
															<tr valign="top">
																<td align="center">NAME</td>
																<td width="6%">: </td>
																<td align="left">'.$row['mov_name'].'</td>
															</tr>

															
															<tr>
																<td align="right">Director</td>
																<td>: </td>
																<td align="left">'.$row['mov_dir'].'</td>
																
															</tr>
															
																					
															<tr>
																<td align="right">Release Year </td>
																<td>: </td>
																<td align="left">'.$row['mov_year'].'</td>
																
															</tr>											
															
															<tr>
																<td align="right">Duration</td>
																<td>: </td>
																<td align="left">'.$row['mov_duration'].'</td>
																
															</tr>
															
															<tr>
																<td align="right">BUY PRICE</td>
																<td>: </td>
																<td align="left">'.'₹'.$row['mov_buy_price'].'</td>
															</tr>
															
															<tr>
																<td align="right">RENT PRICE</td>
																<td>: </td>
																<td align="left">'.'₹'.$row['mov_rent_price'].'</td>
															</tr>
														</table>
										
														
													</td>
												</tr>
											</table>

											<table border="0" width="100%">
												 <tr>
													<td><hr color="green"></td>
												</tr>
												 <tr align="center" bgcolor="#3F3F3F">
													 <td>DESCRIPTION</td>
												</tr>
												<tr>
													<td><hr color="green"></td>
												</tr>
																		
											 </table>
											 
											 '.$row['mov_desc'].'
																				

											 <table width="100%">
											 <tr><td colspan=3><hr color="green"></td></tr>
											 </table>

											<table align="center" height="20%" width="50%">
												 <tr align="center" bgcolor="#3F3F3F">';
												 if(isset($_SESSION['status']))
												 {
													echo ' <a href="process_cart.php?nm='.$row['mov_name'].'&cat='.$_GET['cat'].'&brate='.$row['mov_buy_price'].'&rrate='.$row['mov_rent_price'].'">
														<p><img height="15%" width="40%" hspace="250px" src="images/cart.png"></p>
													</a>';
												}
												else
												{	echo '<td><img src="images/cart.png" height="50%" width="100%"></td>';
													echo '<td><a id="anc" href="register.php"><h4>Please REGISTER to Buy/Rent</h4></a></td>';
												}
												echo '</tr>
											</table>';
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
