<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Untitled Document</title>
    <link href="css/mylogo.css" rel="stylesheet"/>
</head>
<body>
    <header class="mlgo--header js--header">
        <section class="mlgo--section js--section mlgo--col mlgo--col-2">
            <div class="mlg--col1"><h1 class="mlgo--hdg mlgo--hdg-1">myLOGO</h1></div>
            <div class="mlg--col2"></div>
        </section>
    </header>
    <main class="mlgo--main js--main isViewable">
		<?php
		/**/
		session_start();
		if(!empty($_SESSION['user_id']))
		{
		
		?>
			<!-- if user IS signed in : START -->
			<section class="mlgo--section js--section mlgo--col mlgo--col-2 mlgo--header js--header">
				<div class="mlg--col1"><h2 class="mlgo--hdg js--hdg mlgo--hdg-2 js--myGallery">myGallery</h2><h2 class="mlgo--hdg js--hdg mlgo--hdg-2 js--editGallery isHidden">edit Gallery</h2></div>
				<div class="mlg--col2"><button class="mlgo--btn js--btn mlgo--btn-edit js--btn-edit">Edit Gallery</button><button  class="mlgo--btn js--btn mlgo--btn-view js--btn-view isHidden">View Gallery</button></div>
			</section>
			
            <!-- logos : START -->
            <!-- initially built by PHP limit only 12 (see css build at bottom) -->
            <?php
                include 'scripts/db_config.php';
                $sql1 = "SELECT * FROM logos_tbl ORDER BY `id`"; // query
                $res1 = mysqli_query($db, $sql1); // execute query
                $inc1 = 1;
		
				echo '<script>';
				echo 'const lgArray = [[1,2,6],[4,7,9],[2,8,11]];';
				echo 'const foArray = [[1,2,6],[4,7,9],[14,8,11]];';
				echo 'const fiArray = [[13,14,18],[16,19,21],[26,20,23]];';
				echo '</script>';
		
				echo '<form class="js--form js--form--logos">';
				echo '<section class="mlgo--section js--section mlgo--col mlgo--col-4 mlgo--gallery js--gallery">';
                while($logo1 = mysqli_fetch_assoc($res1)){ // loop
					if($inc1<13){
						echo '<div class="mlgo--item js--item">';
						echo '<input type="hidden" name="logofile-'.$inc1.' value="'.$logo1['id'].'"/>';
						echo '<button class="mlgo--logo js--logo logo-'.$inc1.' js--logo-'.$inc1.' an--fadein">';
						echo '<i></i>';
						echo '<div class="mlgo--remove">-</div><div class="mlgo--add">+</div>';
						echo '</button>';
						echo '</div>';
						$inc1++;
					}
                }
				echo '</section>';
				echo '</form>';
		
                $inc2 = 1;
				echo '<style>';
				$sql2 = "SELECT * FROM logos_tbl ORDER BY `id`"; // query
                $res2 = mysqli_query($db, $sql2); // execute query
                while($logo2 = mysqli_fetch_assoc($res2)){ // loop
                    echo '.logo-'.$inc2.' > i::before{';
					echo 'content:url(\'images/logos/'.$logo2['file'].'\');';
					echo '}';
                    $inc2++;
                }
				echo '</style>';
                mysqli_close($db); // close connection
            ?>	
			<!-- logos : END -->
			
			<!-- if user IS signed in : END -->
		<?php
		/**/
		}
		else
		{
				echo '<script>';
				echo 'const lgArray = false;';
				echo 'const foArray = false;';
				echo 'const fiArray = false;';
				echo '</script>';
		?>
		<!-- if user NOT signed In : START -->
		<section class="mlgo--section js--section mlgo--col mlgo--col-2 mlgo--signreg js--signreg">
			<div class="mlg--col1">
				<h2 class="mlgo--hdg mlgo--hdg-2">mySignIn</h2>
				<hr/>
				<form class="mlgo--form js--form mlg--form-signin js--form-signin">
					<div class="mlgo--field js--field">
						<label>Username:</label>
						<input type="text" class="mlgo--input js--input" name="username" value=""/>
						<div class="mlgo--msg"></div>
					</div>
					<div class="mlgo--field js--field">
						<label>Password:</label>
						<input type="text" class="mlgo--input js--input" name="password" value=""/>
						<div class="mlgo--msg"></div>
					</div>
					<div class="mlgo--controls js--controls">
						<button class="mlgo--btn js--btn mlgo--signin js--btn-signin">Sign In</button>
					</div>
				</form>
			</div>
			<div class="mlg--col2">
				<h2 class="mlgo--hdg mlgo--hdg-2">myRegister</h2>
				<hr/>
				<form class="mlgo--form js--form mlg--form-register js--form-register">
					<div class="mlgo--field js--field">
						<label>Full Name:</label>
						<input type="text" class="mlgo--input js--input" name="fullname" value=""/>
						<div class="mlgo--msg"></div>
					</div>
					<div class="mlgo--field js--field">
						<label>Email:</label>
						<input type="text" id="Email" class="mlgo--input js--input" name="emailaddress" value=""/>
						<div class="mlgo--msg"></div>
					</div>
					<div class="mlgo--field js--field">
						<label>Confirm Email:</label>
						<input type="text" class="mlgo--input js--input" name="emailconfirm" data-match="#Email" value=""/>
						<div class="mlgo--msg"></div>
					</div>
					<div class="mlgo--field js--field">
						<label>Password:</label>
						<input type="password" id="Pass" class="mlgo--input js--input" name="password" value=""/>
						<div class="mlgo--msg"></div>
					</div>
					<div class="mlgo--field js--field">
						<label>Confirm Password:</label>
						<input type="password" class="mlgo--input js--input" name="passwordconfirm" data-match="#Pass" value=""/>
						<div class="mlgo--msg"></div>
					</div>
					<div class="mlgo--controls js--controls">
						<button class="mlgo--btn js--btn mlgo--register js--btn-register">Register</button>
					</div>
				</form>
			</div>
		</section>
		<!-- if user NOT signed In : END -->
	<?php
	/**/
    }
	
    ?>	
    </main>
    <footer class="mlgo--footer"></footer>
	
    <link href="css/colorbox.css" rel="stylesheet"/>
    <script id="jquery" src="scripts/jquery_cur.js"></script>
    <script id="colorbox" src="scripts/jquery.colorbox-min.js"></script>
    <script id="appscripts" src="scripts/mylogo.js"></script>
	
</body>

</html>