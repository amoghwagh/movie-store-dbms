<?php session_start();
require('includes/config.php');
?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<?php
			include("includes/head.inc.php");
		?>
		<style>
			.posts2 .entries td{
				width:120px;
			}
			table{
				table-layout:fixed;
			}
			
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
				<div id="page">
					<div id="content">
						<div class="posts2">
							<h1 class="titles">Viewcart</h1>
							<div class="entries">
						
							<pre><?php
							?></pre>
						
							<form action="process_cart.php" method="POST">
							<table id="tab" width="100%" border="0">
								<tr >
									<td><b> No</td>  
									<td><b> Category</td>
									<td> <b> Product</td>
									<td> <b> Type</td>
									<td> <b> Buy Price</td>
									<td> <b> Rent Price</td>
									<td> <b> Total Price</td>
									<td> <b> Delete</td>
								</tr>
								<tr><td colspan="9"><hr style="border:1px Solid #a1a1a1;"></tr>
							
								<?php
									$tot = 0;
									$i = 1;
									if(isset($_SESSION['cart']))
									{

									foreach($_SESSION['cart'] as $id=>$x)
									{	
										echo '
											<tr>
											<td> '.$i.'</td>
											<td> '.$x['cat'].'</td>
											<td> '.$x['nm'].'</td>

											<td>  <input type="radio" id="bprice"
     												name='.$id.' value="'.$x['brate'].'">
    												<label for="bprice">Buy</label> <br> 
    												<input type="radio" id="rprice"
     												name='.$id.'  value="'.$x['rrate'].'">
    												<label for="rprice">Rent</label></td>
											<td> '.$x['brate'].'</td>
											<td> '.$x['rrate'].'</td>
											<td> '.$x['rate'].'</td>
											<td> <a href="process_cart.php?id='.$id.'"><img src="images/Delete.png" height="50" WIDTH="50" ></a></td>
										</tr>';

										$tot = $tot + $x['rate'];
										$i++;
									}
									}
								
								?>
							<tr><td colspan="9"><hr style="border:1px Solid #a1a1a1;"></tr>
								
							<tr>
							<td colspan="9" align="right">
							<h4>Total:</h4>
							
							</td>
							<td> <h4><?php echo $tot; ?> </h4></td>
							</tr>
							<tr><td colspan="9"><hr style="border:1px Solid #a1a1a1;"></tr>
							
							<Br>
								</table>						

								<br><br>
							<center>
							<input type="submit" value=" Re-Calculate " > 
							<div class="anc">
							<a href="checkout.php">CONFIRM & PROCEED</a>
							</div>
							</center>
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
