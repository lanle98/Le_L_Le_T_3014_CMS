<?php
require_once '../load.php';
confirm_logged_in();

$id = $_GET['id'];

$current_product = getSingleProduct($id);



if (!$current_product) {
    $message = 'Failed to get user info';
}

if (isset($_POST['submit'])) {
    $product = array(
        'id' => $id,
        'image'     =>  $_FILES['image'],
        'name'     =>  $_POST['name'],
        'price'      =>  $_POST['price'],
        'detail'       =>  $_POST['detail'],
        'brand'     =>  $_POST['brand'],
        'gender'   =>  $_POST['gender'],
        'color'   =>  $_POST['color'],
        'type'   =>  $_POST['type']

    );

    $message = editProduct($product);
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
</head>

<body>
    <h1>Edit Product</h1>

    <?php echo !empty($message) ? $message : ''; ?>
    <form action='admin_editproduct.php?id=<?php echo $id; ?>' method="post" enctype="multipart/form-data">
        <?php if ($current_product) : ?>
            <?php while ($product_info = $current_product->fetch(PDO::FETCH_ASSOC)) : ?>
                <label>Product Image:</label><br>
                <input type='file' name="image" value=""><br><br>

                <label>Product Name:</label><br>
                <input type='text' name="name" value="<?php echo $product_info['product_name']; ?>"><br><br>

                <label>Product Price:</label><br>
                <input type='text' name="price" value="<?php echo $product_info['price']; ?>"><br><br>

                <label>Product Detail:</label><br>
                <textarea type='text' name="detail" value=""><?php echo $product_info['detail']; ?></textarea><br><br>


                <select name="brand">
                    <option>current brand: <?php echo $product_info['brand']; ?></option>
                    <?php
                    $tbl = 'tbl_brand';
                    $col = 'brand_name';
                    $getFilter = getFilter($tbl, $col);
                    while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                        <option value='<?php echo $row['brand_id'] ?>'><?php echo $row[$col] ?></option>
                    <?php endwhile; ?>


                </select>
                <br>

                <select required name="gender">
                    <option>current gender: <?php echo $product_info['gender']; ?></option>
                    <?php
                    $tbl = 'tbl_gender';
                    $col = 'gender_type';
                    $getFilter = getFilter($tbl, $col);
                    while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                        <option value='<?php echo $row['gender_id'] ?>'><?php echo $row[$col] ?></option>
                    <?php endwhile; ?>


                </select>
                <br>


                <select required name="color">
                    <option>current color: <?php echo $product_info['color']; ?></option>
                    <?php
                    $tbl = 'tbl_color';
                    $col = 'color_name';
                    $getFilter = getFilter($tbl, $col);
                    while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                        <option value='<?php echo  $row['color_id'] ?>'><?php echo $row[$col] ?></option>
                    <?php endwhile; ?>


                </select>
                <br>

                <select required name="type">
                    <option>current type: <?php echo $product_info['type']; ?></option>
                    <?php
                    $tbl = 'tbl_product_type';
                    $col = 'product_type_name';
                    $getFilter = getFilter($tbl, $col);
                    while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                        <option value='<?php echo  $row['type_id'] ?>'><?php echo $row[$col] ?></option>
                    <?php endwhile; ?>


                </select>
                <br>
                <button type="submit" name="submit">Edit Product</button>
            <?php endwhile; ?>
        <?php endif; ?>
    </form>
</body>

</html>