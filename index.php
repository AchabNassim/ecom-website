<?php
	include "includes/dbInc/dbCon.php";

	if(isset($_POST['search'])){
		$searchV = $_POST['searchV'];
		$sql = "SELECT * FROM produit WHERE CONCAT(`categorie`,`libelle`,`prix`) LIKE '%$searchV%';";
		$result = mysqli_query($conn,$sql);
	} else {
		$sql = "SELECT * FROM produit";
		$result = mysqli_query($conn,$sql);
	};

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="style/style.allProd.css">
</head>
<body>
	<form action="index.php" method="POST">
		<input type="text" name="searchV" placeholder="search">
		<input type="submit" name="search">
	</form>
	<div class="product-container">
	<?php while ($row = mysqli_fetch_assoc($result)): ?>

		<div class="product-div">
			<a href="item.php?id=<?php echo $row["idProduit"] ?>">
			<?php echo '<img src="'. 'images/'. $row["image"].'" alt="HTML5 Icon" style="width:308px;height:308px">';?>
			<h5><?php echo $row["libelle"]?></h5>
			<p id="categorie"><?php echo $row["categorie"]?></p>
			<?php
			if($row["stock"] == 0): ?>
		  		<p class="price" style="color:red; font-size: 19px;"><?php echo "out of stock" ?></p>
		  		<?php else: ?> 
		  		<p class="price"><?php echo $row["prix"] . ' DH' ?></p>
		  	<?php endif ?>
		  </a>
		</div>
<?php
	endwhile;
?>
	</div>

</body>
</html>