<?php 
	include "includes/dbInc/getItem.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="style/style.product.css">
</head>
<body>
	<div id="title">
		<p><a href="index.php">HOME</a>  >   <?php echo $row["categorie"] ?></p>
	</div>
	<div class="container">
		<div class="container-div">
			<?php echo '<img src="'. 'images/'. $row["image"].'" alt="HTML5 Icon" style="width:120%;">';?>
		</div>

		<div class="container-div">
			<h2><?php echo $row["libelle"] ?></h2>
			<?php if(!$stock): ?>
		  		<p style="color:red;"><?php echo "out of stock" ?></p>
		  		<?php else: ?> 
		  		<p><?php echo $row["prix"] . " DH"?></p>
		  	<?php endif ?>
			<p id="description"><?php echo $row["description"]?></p>

			<!-- checking if the item is available -->

			<?php if(!$stock) :?>
				<a href="#" ><input type="submit" class="button" id="addBtn" name="addCart" value="ADD TO CART" disabled ></a><br>
				<a href="" ><input type="submit" class="button" id="emptyBtn" name="buyNow" value="BUY IT NOW" disabled ></a>
				<p style="color: red; margin-top: 25px;">the item You're looking for is no longer available, please check for something else</p>
			<?php else :?>

				<a href="cart.php"><input type="submit" class="button" id="addBtn" name="addCart" value="ADD TO CART"></a><br>
				<a href="cart.php"><input type="submit" class="button" id="buyBtn" name="buyNow" value="BUY IT NOW"></a>
			<?php endif  ?>
			<details class="returns">
				<summary>RETURNS</summary>
				<ul>
					<li>Full refunds up to 60 days.</li>
					<li>After 60 days, we can do a refund as store credit.</li>
					<li>swaps are always free.</li>
				</ul>
			</details>
		</div>
	</div>
</body>
</html>
