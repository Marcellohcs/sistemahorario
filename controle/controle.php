<?php
include "conexao.php";

    $professor = $_POST['professor'];
    $fessor = explode(" - ", $professor);
    $sala = $_POST['sala'];
    $aula = $_POST['aula'];
    $dia = $_POST['dia'];


$sql = "UPDATE horarios SET $sala = $professor WHERE Aula= $aula AND Dia = $dia";
$query = mysqli_query($conexao, $sql);


$sql1 = "SHOW COLUMNS FROM horarios";
$query2 = mysqli_query($conexao, $teste);
$query3 = array();
while($row = mysqli_fetch_array($query3)){
	$query3[] = $row;
   
}



$sql2 = "SELECT * FROM horarios WHERE Aula = $aula AND $dia = Dia";
$query4 = mysqli_query($conexao, $sql2);
$cont = 1;
while ($result = mysqli_fetch_assoc($query4)) {
	foreach ($query4 as $b) {
	 $a = $b['Field'];
	 $aa = $result[$a];
	 if ($aa != null AND $a != "Dia" AND $a != "Aula" AND $a != "id") {
	 	$x = explode(" - ", $result[$a]);

 		if ($x[1] == $prof[1] && $a != $sala) {

		echo "1";
	}
	 }
	 
}
	
}



?>