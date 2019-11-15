<ul>
	<li id="login">
		<?php
		require('includes/config.php');
		if(isset($_SESSION['status']))
		{
			echo '<h1>Hello: '.$_SESSION['unm'].'</h1>';
		}
		else
		{
			echo '<form action="process_login.php" method="POST">
					<h2>LogIN</h2>
					<b>Username:</b>
					<br><input type="text" name="usrnm">
					<br>

					<b>Password:</b>
					<br><input type="password" name="pwd">
					<input type="submit" id="x" value="Login"/>
				</form>';
		}
		?>
	</li>


	<li id="Search">
		<h2>Search</h2>
		<form method="GET" action="search_result.php">
			<fieldset>
				<input type="text" id="s" name="s" value="" />
				<input type="submit" id="x" value="Search"/>
			</fieldset>
		</form>
	</li>

	<li>
		<h2>Categories</h2>
		<ul>
			<?php

				$query="select * from category";
				$res=mysqli_query($conn,$query);
				while($row=mysqli_fetch_assoc($res))
				{
					echo '<li><a href="subcat.php?cat='.$row['cat_id'].'&cat_name='.$row['cat_name'].'">'.$row["cat_name"].'</a></li>';
				}
				mysqli_close($conn);
			?>
		</ul>
	</li>

			
</ul>

