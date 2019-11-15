<?php
 session_start();
 extract($_POST);
 extract($_SESSION);
 
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
			
			<div class="container">

            <div id="page">
					<div id="content">
						<div class="posts2">
							<div class="entries">
								<font color="green">Purchase Details</font>	
		
      <div  class="form">
    		<form id="contactform" method="post" action="end.php"> 
    			<p class="contact"><label for="name">Name</label>	<br>
    			<input id="name" name="name" placeholder="First and Last name" required="" tabindex="1" type="text" size="30"> 

    			<p class="contact"><label for="name">E-mail</label>	<br>
    			<input id="email" name="email" placeholder="example@domain.com" required="" tabindex="1" type="text" size="30"> 
    		
    			<p class="contact"><label for="email">Address</label><br> 
    			<textarea id="address" name="address" placeholder="Address" required="" cols="75" rows="10" type="email"> </textarea>

    			<p class="contact"><label for="city">City</label><br>
    			<input type="text" id="city" name="city" required="" placeholder="Bangalore"> 

                <p class="contact"><label for="state">State</label> <br>
               <input type="text" id="state" name="state" required="" placeholder="Karnataka"> 
               
            	<p class="contact"><label for="phone">Mobile phone</label><br> 
              <input id="phone" name="phone" placeholder="phone number" required="" type="text"> <br>

            <br>
            <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Confirm & Proceed" type="submit">

   </form> 
</div>
</div>
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
</div>
</div>      
</div>
</body>