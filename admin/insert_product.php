<!DOCTYPE>
<?php
include("includes/db.php");
?> 
<html>
<head>
	<title>Inserting Product</title>
	<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
	<script>tinymce.init({ selector:'textarea' });</script>
	
</head>
<body bgcolor="skyblue">
	<form action="insert_product.php" method="post" enctype="multipart/form-data">
		<table align="center" width="750" border="2" bgcolor="orange">
			
			<tr align="center">
				<td colspan="7"><h2>Insert New Post Here</h2></td></tr>
			<tr>
				<td align="right"><b>Product Title:</b></td>
				<td><input type="text" name="product_title"/></td>
			</tr>
			<tr>
				<td align="right"><b>Product Category:</b></td>
				<td>
					<select name="product_cat">
						<option>Select a Category</option>
						<?php
							$get_cats = "select * from categories";
							
							$run_cats = mysqli_query($con, $get_cats);
							
							while($row_cats=mysqli_fetch_array($run_cats)){
								
								$cat_id = $row_cats['cat_id'];
								$cat_title = $row_cats['cat_title'];
								echo "<option value='$cat_id'>$cat_title</option>";
							}
						?>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right"><b>Product Brand:</b></td>
				<td>
					<select name="product_brand">
						<option>Select a Brand</option>
						<?php
							$get_brands = "select * from brands";
	
							$run_brands = mysqli_query($con, $get_brands);
							
							while($row_brands=mysqli_fetch_array($run_brands)){
								
								$brands_id = $row_brands['brand_id'];
								$brands_title = $row_brands['brand_title'];
								echo "<option value='$brand_id'>$brands_title</option>";
							}
						?>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right"><b>Product Image:</b></td>
				<td><input type="file" name="product_image"/></td>
			</tr>
			<tr>
				<td align="right"><b>Product Price:</b></td>
				<td><input type="text" name="product_price"/></td>
			</tr>
			<tr>
				<td align="right"><b>Product Description:</b></td>
				<td><textarea name="product_desc" cols="40" rows="20"></textarea></td>
			</tr>
			<tr>
				<td align="right"><b>Product Keywords:</b></td>
				<td><input type="text" name="product_keywords"/></td>
			</tr>
			<tr align="center">
				
				<td colspan="7"><input type="submit" name="insert_post" value="Insert Now"/></td>
			</tr>
		
		
		</table>
	
	
	</form>
	
	
	
	
</body>
</html>