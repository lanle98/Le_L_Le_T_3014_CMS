<?php require_once 'load.php';

if (isset($_GET['submit'])) {
    $products_table = 'tbl_products';
    $input = $_GET['search'];
    $getProducts = searchProducts($products_table, $input);
}


?>




<header>
    <h2>This is the header</h2>
    <nav class='filterNav row'>
        <a href="index.php">All Products</a>
        <ul>
            Brand
            <?php
            $tbl = 'tbl_brand';
            $col = 'brand_name';
            $getFilter = getFilter($tbl, $col);
            while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                <li><a href='index.php?brand=<?php echo  $row[$col] ?>'><?php echo $row[$col] ?></a></li>
            <?php endwhile; ?>
        </ul>

        <ul>
            Gender
            <?php
            $tbl = 'tbl_gender';
            $col = 'gender_type';
            $getFilter = getFilter($tbl, $col);
            while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                <li><a href='index.php?gender=<?php echo $row[$col] ?>'><?php echo $row[$col] ?></a></li>
            <?php endwhile; ?>
        </ul>

        <ul>
            Type
            <?php
            $tbl = 'tbl_product_type';
            $col = 'product_type_name';
            $getFilter = getFilter($tbl, $col);
            while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                <li><a href='index.php?type=<?php echo $row[$col] ?>'><?php echo $row[$col] ?></a></li>
            <?php endwhile; ?>
        </ul>


        <form action="index.php" method="get">
            <input name='search' type="text" placeholder="search product ...">
            <button name="submit" type="submit">search</button>
        </form>

    </nav>
</header>