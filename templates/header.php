<?php require_once 'load.php'; ?>

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
                <li><a href='index.php?brand=<?php echo  $row['brand_name'] ?>'><?php echo $row['brand_name'] ?></a></li>
            <?php endwhile; ?>
        </ul>

        <ul>
            Gender
            <?php
            $tbl = 'tbl_gender';
            $col = 'gender_type';
            $getFilter = getFilter($tbl, $col);
            while ($row = $getFilter->fetch(PDO::FETCH_ASSOC)) : ?>
                <li><a href='index.php?gender=<?php echo $row['gender_type'] ?>'><?php echo $row['gender_type'] ?></a></li>
            <?php endwhile; ?>
        </ul>



    </nav>
</header>