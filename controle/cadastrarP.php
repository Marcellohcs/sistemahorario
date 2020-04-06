<?php
	include "conexao.php";
	$professor = $_POST['professor'];
	$pro_dt = $_POST['pro_dt'];
	$hora_aula = $_POST['hora_aula'];
	$hora_planejamento = $_POST['hora_planejamento'];
	$sql = "INSERT INTO `tb_professor`(`pro_nome`, `pro_dt`, `pro_num_de_aula`, `pro_num_aula_dis`) VALUES ('$professor','$pro_dt', '$hora_aula', '$hora_planejamento');";
	$query = mysqli_query($conexao, $sql);

	$sql1 = "SELECT * FROM tb_professor WHERE pro_nome = '$professor'";
	$query1 = mysqli_query($conexao,$sql1);
	$row = mysqli_fetch_assoc($query1);
		$pro_id = $row['pro_id'];
	

	$sql2 = "SELECT * FROM  tb_disciplina";
		$query2 = mysqli_query($conexao, $sql2);
		$num = 1;
		while ($row1 = mysqli_fetch_assoc($query2)) {
			if (isset($_POST[$num])) {
				if ($_POST[$num] == $row['dis_id']) {
					$dis_id = $_POST[$num];
					$sql4 = "INSERT INTO tb_professor_has_tb_disciplina (tb_professor_pro_id,tb_disciplina_dis_id) VALUES ('$dis_id','$pro_id')";
					$query4 = mysqli_query($conexao,$sql4);
				}
			}
	     	$num = $num+1;
		}


// header('location:../pages/cadastroP.php');
?>