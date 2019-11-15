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
			<div class="posts2">
				<h1 class="title"> Welcome to
					<?php
						if(isset($_SESSION["status"]))
						{
							echo '<div id ="logo-name">'.$_SESSION["unm"];
						}
						else
						{	
							echo '<div id ="logo-name">Flix</div>';
						}
					?>
				</h1>
				<div class="entries">
				
							<div id ="tname"><b> OUR TOP MOVIES </b></div>
								<meta name="viewport" content="width=device-width, initial-scale=1">
								<style>
								* {box-sizing:border-box}
								body {font-family: Verdana,sans-serif;margin:0}
								.mySlides {display:none}

								/* Slideshow container */
								.slideshow-container { 
								  width:auto;
								  max-height: 400px;
								  position: relative;
								  margin: auto;
								}

								/* Next & previous buttons */
								.prev, .next {
								  cursor: pointer;
								  position: absolute;
								  top: 50%;
								  width: auto;
								  padding: 16px;
								  margin-top: -22px;
								  color: black;
								  font-weight: bold;
								  font-size: 18px;
								  transition: 0.6s ease;
								  border-radius: 0 3px 3px 0;
								}

								/* Position the "next button" to the right */
								.next {
								  right: 0;
								  border-radius: 3px 0 0 3px;
								}

								/* On hover, add a black background color with a little bit see-through */
								.prev:hover, .next:hover {
								  background-color: rgba(0,0,0,0.8);
								}

								/* Caption text */
								.text {
								  color: #f2f2f2;
								  font-size: 15px;
								  padding: 8px 12px;
								  position: absolute;
								  bottom: 8px;
								  width: 100%;
								  text-align: center;
								}

								/* Number text (1/3 etc) */
								.numbertext {
								  color: #f2f2f2;
								  font-size: 12px;
								  padding: 8px 12px;
								  position: absolute;
								  top: 0;
								}

								/* The dots/bullets/indicators */
								.dot {
								  cursor: pointer;
								  height: 15px;
								  width: 15px;
								  margin: 0 2px;
								  background-color: #bbb;
								  border-radius: 50%;
								  display: inline-block;
								  transition: background-color 0.6s ease;
								}

								.active, .dot:hover {
								  background-color: #717171;
								}

								/* Fading animation */
								.fade {
								  -webkit-animation-name: fade;
								  -webkit-animation-duration: 1.5s;
								  animation-name: fade;
								  animation-duration: 1.5s;
								}

								@-webkit-keyframes fade {
								  from {opacity: .4} 
								  to {opacity: 1}
								}

								@keyframes fade {
								  from {opacity: .4} 
								  to {opacity: 1}
								}

								/* On smaller screens, decrease text size */
								@media only screen and (max-width: 300px) {
								  .prev, .next,.text {font-size: 11px}
								}
								</style>
								</head>
								<body>

								<div class="slideshow-container">

								<div class="mySlides fade">
								  <div class="numbertext">1 / 5</div>
								  <img src="upload_image/deadpool.jpg" style="width:100%">
								  <div class="text">Deadpool</div>
								</div>

								<div class="mySlides fade">
								  <div class="numbertext">2 / 5</div>
								  <img src="upload_image/dunkirk.jpg" style="width:100%">
								  <div class="text">Dunkirk</div>
								</div>

								<div class="mySlides fade">
								  <div class="numbertext">3 / 5</div>
								  <img src="upload_image/titanic.jpg" style="width:100%">
								  <div class="text">Titanic</div>
								</div>

								<div class="mySlides fade">
								  <div class="numbertext">4 / 5</div>
								  <img src="upload_image/phoonk.jpg" style="width:100%">
								  <div class="text">Phoonk</div>
								</div>

								<div class="mySlides fade">
								  <div class="numbertext">5 / 5</div>
								  <img src="upload_image/baahu.jpg" style="width:100%">
								  <div class="text">Baahubali 2</div>
								</div>

								<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
								<a class="next" onclick="plusSlides(1)">&#10095;</a>

								</div>
								<br>

								<div style="text-align:center">
								  <span class="dot" onclick="currentSlide(1)"></span> 
								  <span class="dot" onclick="currentSlide(2)"></span> 
								  <span class="dot" onclick="currentSlide(3)"></span> 
								  <span class="dot" onclick="currentSlide(4)"></span> 
								  <span class="dot" onclick="currentSlide(5)"></span> 
								</div>

								<script>
								var slideIndex = 1;
								showSlides(slideIndex);

								function plusSlides(n) {
								  showSlides(slideIndex += n);
								}

								function currentSlide(n) {
								  showSlides(slideIndex = n);
								}

								function showSlides(n) {
								  var i;
								  var slides = document.getElementsByClassName("mySlides");
								  var dots = document.getElementsByClassName("dot");
								  if (n > slides.length) {slideIndex = 1}    
								  if (n < 1) {slideIndex = slides.length}
								  for (i = 0; i < slides.length; i++) {
								      slides[i].style.display = "none";  
								  }
								  for (i = 0; i < dots.length; i++) {
								      dots[i].className = dots[i].className.replace(" active", "");
								  }
								  slides[slideIndex-1].style.display = "block";  
								  dots[slideIndex-1].className += " active";
								}
								</script>
					<br>
					<br>
				</div>
			</div>
		</div>

		<div id="sidebar">
			<?php
				include("includes/search.inc.php");
			?>
			
		</div>

		<div style="clear: both">&nbsp &nbsp;
		</div>
	</div>

	<div id="footer">
		<?php
			include("includes/footer.inc.php");
		?>
	</div>
</body>
</html>









