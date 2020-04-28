<?php
	include "conexao.php";

	$disciplina = $_POST['disciplina'];

	$sql = "INSERT INTO `tb_disciplina`(`dis_nome`)VALUES ('$disciplina');";
	$query = mysqli_query($conexao, $sql);

	header('Location:../pages/cadastroD.php');
?>