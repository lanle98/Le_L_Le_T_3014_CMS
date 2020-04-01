<?php

require_once '../load.php';
confirm_logged_in();


$genre_table = 'tbl_genre';
$genres = getAll($genre_table);

if (isset($_POST['submit'])) {
    $product = array(
        'image'     =>  $_FILES['image'],
        'name'     =>  $_POST['name'],
        'price'      =>  $_POST['price'],
        'detail'       =>  $_POST['detail'],
        'brand'     =>  $_POST['brand'],
        'gender'   =>  $_POST['gender'],
        'color'   =>  $_POST['color'],
        'type'   =>  $_POST['type']

    );



    $result = addProduct($product);
    $message = $result;
}



?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
</head>

<body>
    <?php echo !empty($message) ? $message : ''; ?>
    <form action='admin_addmovie.php' method="post" enctype="multipart/form-data">
        <label>Product Image:</label><br>
        <input type='file' name="image" value=""><br><br>

        <label>Product Name:</label><br>
        <input type='text' name="name" value=""><br><br>

        <label>Product Price:</label><br>
        <input type='text' name="price" value=""><br><br>

        <label>Product Detail:</label><br>
        <textarea type='text' name="detail" value=""></textarea><br><br>


        <select name="brand">
            <option>Please select brand for product</option>
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
            <option>Please select gender for product</option>
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
            <option>Please select color for product</option>
            <?php
            $tbl = 'tbl_color';
            $col = 'color_name';
            $getFilter = getFilter($tbl, $col);
            while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                <option value='<?php echo  $row['color_id'] ?>'><?php echo $row[$col] ?></option>
            <?php endwhile; ?>


        </select>

        <select required name="type">
            <option>Please select type for product</option>
            <?php
            $tbl = 'tbl_product_type';
            $col = 'product_type_name';
            $getFilter = getFilter($tbl, $col);
            while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                <option value='<?php echo  $row['type_id'] ?>'><?php echo $row[$col] ?></option>
            <?php endwhile; ?>


        </select>
        <br>
        <button type="submit" name="submit">Add Product</button>
    </form>
</body>

</html>