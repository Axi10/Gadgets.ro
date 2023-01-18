<?php 

// $db= $conn;
// $tabel="iphone";
// $coloane= ['id', 'nume', 'pret', 'data'];
// $fetchData = fetch_data($db, $tabel, $coloane);

function fetch_data($db, $tabel, $coloane){
 if(empty($db)){
  $msj= "Eroare de conexiune";
}else{
$numeColoana = implode(", ", $coloane);
$select = "SELECT * FROM $tabel ORDER BY id";
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