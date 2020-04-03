<?php
require_once 'load.php';

if (isset($_GET['id'])) {
    $product_table = 'tbl_products';
    $id = $_GET['id'];
    $col = 'product_id';

    $getProduct = getSingleProduct($id);
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Welcome to the Movie CMS!</title>
</head>

<body class="container">
    <?php include 'templates/header.php'; ?>
    <?php while ($row = $getProduct->fetch(PDO::FETCH_ASSOC)) : ?>
        <div class="row">
            <img class="img-fluid col-12 col-md-6" src="images/<?php echo $row['image']; ?>" alt="<?php echo $row['product_name']; ?>" />
            <div class="col-md-6 px-5">
                <h2><?php echo $row['product_name']; ?></h2>
                <h4><?php echo $row['price']; ?></h4>
                <p><?php echo $row['detail']; ?></p>
                <p>Gender: <?php echo $row['gender']; ?></p>
                <p>Brand: <?php echo $row['brand']; ?></p>
                <p>Type: <?php echo $row['type']; ?></p>
                <a href="index.php">Go Back ...</a><br>
            </div>

        </div>
    <?php endwhile; ?>
    <?php include 'templates/footer.php'; ?>
</body>

</html>