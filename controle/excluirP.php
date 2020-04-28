<?php
	include "conexao.php";

	$pro_id = $_GET['id'];

	$sql ="DELETE tb_professor_has_tb_turma.*, tb_professor_has_tb_disciplina.*, tb_professor.*
        FROM tb_professor_has_tb_turma, tb_professor_has_tb_disciplina, tb_professor
        WHERE tb_professor_has_tb_turma.tb_professor_pro_id = $pro_id
        AND tb_professor_has_tb_disciplina.tb_professor_pro_id = $pro_id
        AND tb_professor.pro_id = $pro_id";
	$query = mysqli_query($conexao, $sql);

	header('Location:../pages/cadastroP.php');
?>