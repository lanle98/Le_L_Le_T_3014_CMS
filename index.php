<?php
require_once 'load.php';

if (isset($_GET['filter'])) {
    $args = array(
        'tbl' => 'tbl_movies',
        'tbl2' => 'tbl_genre',
        'tbl3' => 'tbl_mov_genre',
        'col' => 'movies_id',
        'col2' => 'genre_id',
        'col3' => 'genre_name',
        'filter' => $_GET['filter']
    );
    $getProducts = getMoviesByFilter($args);
} else {
    $products_table = 'tbl_products';
    $getProducts = getAll($products_table);
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

<style>
    img {
        object-fit: cover;
        height: 300px !important;
    }
</style>

<body class="container">
    <?php include 'templates/header.php'; ?>
    <div class="row">
        <?php while ($row = $getProducts->fetch(PDO::FETCH_ASSOC)) : ?>
            <div class="movie-item col-12 col-md-4 p-5">
                <img class="img-fluid w-100" src="images/<?php echo $row['image']; ?>" alt="<?php echo $row['product_name']; ?>" />
                <h2><?php echo $row['product_name']; ?></h2>
                <h4><?php echo $row['price']; ?></h4>
                <a href="details.php?id=<?php echo $row["product_id"]; ?>">Read More</a>
            </div>
        <?php endwhile; ?>
    </div>
    <?php include 'templates/footer.php'; ?>
</body>

</html>