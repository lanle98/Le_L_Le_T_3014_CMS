<?php

function addproduct($product)
{

    try {
        $pdo = Database::getInstance()->getConnection();

        $cover = $product['image'];
        $upload_file = pathinfo($cover['name']);
        $accepted_types = array('gif', 'jpg', 'png', 'jpeg', 'webp');
        if (!in_array($upload_file['extension'], $accepted_types)) {
            throw new Exception('Wrong file type');
        }

        $image_path = '../images/';
        $generated_name = md5($upload_file['file_name'] . time());
        $generated_filename = $generated_name . '.' . $upload_file["extension"];
        $targetpath = $image_path . $generated_filename;

        if (!move_uploaded_file($cover['tmp_name'], $targetpath)) {
            throw new Exception('Failed to move uploaded file, check permission!');
        };



        $insert_product_query = 'INSERT INTO tbl_products(product_name,price,detail,image)';
        $insert_product_query .= ' VALUE(:name,:price,:detail,:image)';

        $insert_product = $pdo->prepare($insert_product_query);
        $insert_product_result = $insert_product->execute(
            array(
                ':name' => $product['name'],
                ':price' => $product['price'],
                ':detail' => $product['detail'],
                ':image' => $generated_filename,
            )
        );

        $last_uploaded_id = $pdo->lastInsertId();
        if ($insert_product_result && !empty($last_uploaded_id)) {
            $update_gender_query = 'INSERT INTO tbl_linking_gender(product_id,gender_id) VALUES(:product_id,:gender_id)';
            $update_gender = $pdo->prepare($update_gender_query);

            $update_gender_result = $update_gender->execute(
                array(
                    ':product_id' => $last_uploaded_id,
                    ':gender_id' => $product['gender']
                )
            );

            $update_brand_query = 'INSERT INTO tbl_linking_brand(product_id,brand_id) VALUES(:product_id,:brand_id)';
            $update_brand = $pdo->prepare($update_brand_query);

            $update_brand_result = $update_brand->execute(
                array(
                    ':product_id' => $last_uploaded_id,
                    ':brand_id' => $product['brand']
                )
            );

            $update_color_query = 'INSERT INTO tbl_linking_color(product_id,color_id) VALUES(:product_id,:color_id)';
            $update_color = $pdo->prepare($update_color_query);

            $update_color_result = $update_color->execute(
                array(
                    ':product_id' => $last_uploaded_id,
                    ':color_id' => $product['color']
                )
            );

            $update_type_query = 'INSERT INTO tbl_product_linking_type(product_id,type_id) VALUES(:product_id,:type_id)';
            $update_type = $pdo->prepare($update_type_query);

            $update_type_result = $update_type->execute(
                array(
                    ':product_id' => $last_uploaded_id,
                    ':type_id' => $product['type']
                )
            );
        }

        redirect_to('index.php');
    } catch (Exception $e) {
        $err = $e->getMessage();
        return $err;
    }
}
