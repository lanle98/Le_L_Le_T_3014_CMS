<?php
function getAll($tbl)
{
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM ' . $tbl;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem accessing this info';
    }
};

function getSingleMovie($tbl, $col, $id)
{
    //TODO: refer the function above to finish this one

    // 
    $pdo = Database::getInstance()->getConnection();
    $query = "select p.*, GROUP_CONCAT(c.color_name) as color, g.gender_type as gender, r.review_scale as review, b.brand_name as brand from $tbl p left join tbl_linking_color link ON link.product_id = p.product_id left join tbl_color c on c.color_id = link.color_id left join tbl_linking_gender link_g ON link_g.product_id = p.product_id left join tbl_gender g on g.gender_id = link_g.gender_id left join tbl_linking_review link_r on link_r.product_id = p.product_id left join tbl_review r on r.review_id = link_r.review_id left join tbl_linking_brand link_b on link_b.product_id = p.product_id left join tbl_brand b on b.brand_id = link_b.brand_id where p.product_id=$id;";

    $results = $pdo->query($query);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem';
    }
}

function getProductsByFilter($args)
{
    $pdo = Database::getInstance()->getConnection();
    $query = 'SELECT * FROM ' . $args['tbl'] . ' AS t,';
    $query .= ' ' . $args["tbl2"] . ' AS t2,';
    $query .= ' ' . $args['tbl3'] . ' AS t3';
    $query .= ' WHERE t.' . $args['col'] . ' = t3.' . $args['col'];
    $query .= ' AND t2.' . $args['col2'] . ' = t3.' . $args['col2'];
    $query .= ' AND t2.' . $args['col3'] . ' ="' . $args['filter'] . '"';


    $results = $pdo->query($query);
    if ($results) {
        return $results;
    } else {
        return 'There was a problem';
    }
}

function getFilter($tbl, $col)
{
    $pdo = Database::getInstance()->getConnection();

    $queryAll = "SELECT $col FROM $tbl";
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results;
    } else {
        return 'There was a problem accessing this info';
    }
}
