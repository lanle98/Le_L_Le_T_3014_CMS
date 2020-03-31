<?php 
function getAll($tbl){
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM '.$tbl;
    $results = $pdo->query($queryAll);

    if($results){
        return $results;
    }else{
        return 'There was a problem accessing this info';
    }
};

function getSingleMovie($tbl,$col,$id){
    //TODO: refer the function above to finish this one
    $pdo = Database::getInstance()->getConnection();
    $query = "SELECT * FROM $tbl WHERE $col = $id";
    
    $results = $pdo->query($query);
    
    if($results){
        return $results;
    }else{
        return 'There was a problem';
    }
}

function getMoviesByFilter($args){
    $pdo = Database::getInstance()->getConnection();
    $query = 'SELECT * FROM ' . $args['tbl'] . ' AS t,';
    $query .= ' '. $args["tbl2"]. ' AS t2,';
    $query .= ' '. $args['tbl3']. ' AS t3';
    $query .=' WHERE t.'. $args['col']. ' = t3.' .$args['col'];
    $query .= ' AND t2.' . $args['col2'].' = t3.'. $args['col2'];
    $query .= ' AND t2.'.$args['col3']. ' ="'.$args['filter'].'"'; 
    
  
    $results = $pdo->query($query);
    if($results){
        return $results;
    }else{
        return 'There was a problem';
    }
}