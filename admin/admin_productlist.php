<?php
require_once '../load.php';
confirm_logged_in();
if (isset($_GET['id'])) {

    $id = $_GET['id'];
    $delete_product_result = deleteProduct($id);

    if (!$delete_product_result) {
        $message = 'Failed to delete user';
    }
}

$tbl = 'tbl_products';
$results = getAll($tbl);


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
</head>

<body>
    <?php echo  $delete_user_result ?>
    <table>
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <?php
        while ($row = $results->fetch(PDO::FETCH_ASSOC)) : ?>
            <tr>
                <td><?php echo $row['product_id']; ?></td>
                <td><?php echo $row['product_name']; ?></td>
                <td><?php echo $row['price']; ?></td>
                <td><a href="admin_editproduct.php?id=<?php echo $row['product_id']; ?>">Edit</a></td>
                <td><a href="admin_productlist.php?id=<?php echo $row['product_id']; ?>">Delete</a></td>
            </tr>

        <?php endwhile; ?>



    </table>
</body>

</html>