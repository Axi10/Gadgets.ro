<?php 


$brand_name = ""; 

function fetch_data($db, $tabel, $coloane) {
    global $brand_name;
 if(empty($db)){
  $msj= "Eroare de conexiune";
}else{ if($brand_name != ""){
   $select = "SELECT product.*,brand.* FROM product
       JOIN Brand ON product.BrandID = brand.BrandID
       WHERE Brand.BrandName = '$brand_name'
       ORDER BY product.ProductID";
}else{
   $select = "SELECT product.*,brand.* FROM product
       JOIN Brand ON product.BrandID = brand.BrandID
       ORDER BY product.ProductID";
}

$result = mysqli_query($db, $select);

if($result== true){ 
 if ($result->num_rows > 0) {
    $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
    $msg= $row;
 } else {
    $msg= "Datele nu au fost gasite"; 
 }
}else{
  $msg= mysqli_error($db);
}
}
return $msg;
}
?>