<?php 
	if (isset($_POST['succes'])){
		echo "data stored";
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="style/style.register.css">
</head>
<body>
	<div class="container">
		<form action="includes/dbInc/register.php" method="POST">
		<div>
			<label for="firstName"></label>
			<input type="text" name="firstName" id="firstName" placeholder="First Name">
			<p id="firstNameV"></p>
		</div>
		<div>
			<label for="lastName"></label>
			<input type="text" name="lastName" id="lastName" placeholder="Last Name">
			<p id="lastNameV"></p>
		</div>
		<div>
			<label for="adresse"></label>
			<input type="text" name="adresse" id="adresse" placeholder="Adresse">
			<p id="adresseV"></p>
		</div>
		<div>
			<label for="phone"></label>
			<input type="tel" name="phone" id="phone" placeholder="Phone Number">
			<p id="numberV"></p>
		</div>
		<div>
			<label for="email"></label>
			<input type="email" name="email" id="email" placeholder="Email">
			<p id="emailV"></p>
		</div>
		<div>
			<label for="Password"></label>
			<input type="password" name="password" id="password" placeholder="Please enter a password" required>
			<p id="passwordV"></p>
		</div>
		<div>
			<label for="passwordConf"></label>
			<input type="password" name="passwordConf" id="passwordConf" placeholder="please enter your password again" required>
			<p id="passwordConfV"></p>
		</div>
		<div>
			<input type="submit" name="submit" value="Create my account" id="submitBtn">
		</div>
		</form>
	</div>
	<script type="text/javascript" src="script/validation.js"></script>
</body>
</html>