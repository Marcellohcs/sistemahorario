    <?php
		$profsql = "SELECT tur.tur_nome, tur.tur_serie, tur.tur_sala, prof.pro_nome, dis.dis_nome FROM tb_turma tur 
		JOIN tb_professor_has_tb_turma tur_prof ON tur.tur_id = tur_prof.tb_turma_tur_id 
		JOIN tb_professor prof ON prof.pro_id = tur_prof.tb_professor_pro_id 
		JOIN tb_professor_has_tb_disciplina prof_dis ON prof_dis.tb_professor_pro_id = prof.pro_id 
		JOIN tb_disciplina dis ON dis.dis_id = prof_dis.tb_disciplina_dis_id";

		$profquery = mysqli_query($conexao, $profsql);
		$comum= array();
		while ($row = mysqli_fetch_array($profquery)) {
			$comum[] = $row;
		}

		$proftecsql = "SELECT * FROM tb_turma 
		JOIN tb_professor_tecnico_has_tb_turma pro_tec_tur ON pro_tec_tur.tb_turma_tur_id = tb_turma.tur_id 
		JOIN tb_professor_tecnico pro_tec ON pro_tec.pro_tec_id = pro_tec_tur.tb_professor_tecnico_pro_tec_id 
		JOIN tb_disciplina_tecnica_has_tb_professor_tecnico dis_pro_tec ON dis_pro_tec.tb_disciplina_tecnica_dis_tec_id = pro_tec.pro_tec_id 
		JOIN tb_disciplina_tecnica dis_tec ON dis_tec.dis_tec_id = dis_pro_tec.tb_disciplina_tecnica_dis_tec_id 
		JOIN tb_disciplina_tecnica_has_tb_curso dis_cur ON dis_cur.tb_disciplina_tecnica_dis_tec_id = dis_tec.dis_tec_id 
		JOIN tb_curso ON tb_curso.cur_id= dis_cur.tb_curso_cur_id AND tb_curso.cur_id = tb_turma.tb_curso_cur_id 
		WHERE tb_turma.tur_serie = dis_cur.tb_dis_serie";

		$proftecquery = mysqli_query($conexao, $proftecsql);
		$tecnico = array();
		while($row1  = mysqli_fetch_array($proftecquery)){
			$tecnico[] = $row1;
		}
		
		$horariosql = "SELECT * FROM horarios";
		$horarioquery = mysqli_query($conexao, $horariosql);
		$horario = array();
		while($row2 = mysqli_fetch_array($horarioquery)){
			$horario[] = $row2;
		}
	?>
	 <div class="container">
	 	<div class=" col-md-12 row">
	 		<div class="horario">
	        	<table class = "table table-hover">
	                <thead>
	                    <tr>
	                        <?php

	                        	$sql="SELECT * FROM tb_turma order by tur_id desc";
	                        	$query= mysqli_query($conexao,$sql);
	                        	$resultado1 = $query;
	                        		while($resultado = mysqli_fetch_assoc($resultado1)){
										if ($Forma == 1) {
											echo "<th>SALA ".$resultado['tur_sala']."</th>";
										}else{echo "<th>".$resultado['tur_serie']."º ".$resultado['tur_nome']."</th>";}	
									}
	                        ?>
	                    </tr>
	                </thead>
	                <tbody>
	    				<?php

	    					$sala = 1;
	    					$aula = 1;
	    					$id = 1;
							$semestre = 2;
							

	    				while ( $sala <= 13) {
	    					if ($sala == 1) {
	    						echo "<tr>";
	    					}
	    				
	    					echo "<td><select id=".$id." name='".$aula."' class='form-control ".$sala."'' onclick='myFunction(".$id.",". $aula.",".$sala.")'>";
	    						echo "<option value='select'>-Professores-</option>";

	    				foreach ($comum as $resucom) {
	    					if ($resucom['tur_sala'] == $sala) {
	    						echo "<option>".utf8_encode($resucom['dis_nome'])." - ".utf8_encode($resucom['pro_nome'])."</option>";
	    					}
	    				}

	    				foreach ($tecnico as $resutec) {
	    					if($resutec['tur_sala'] == $sala AND $resutec['tb_curso_cur_id'] == $resutec['cur_id'] AND $resutec['tb_dis_serie'] == $resutec['tur_serie'] AND $resutec['tb_dis_semestre'] == $semestre) {
								echo "<option style='color:#28a745;' value='".utf8_encode($resutec['dis_tec_nome'])." - ".utf8_encode($resutec['pro_tec_nome'])."'>".utf8_encode($resutec['dis_tec_nome'])." - ".utf8_encode($resutec['pro_tec_nome'])."</option>";
	    					}
						}
						
						foreach ($horario as $hor) {
							if ($hor['Sala'.$sala.''] == $resucom['dis_nome']." - ".$resucom['pro_nome'] AND $hor['Aula'] == $aula) {
								echo " ";
							}
						}
						echo"</select></td>";

						$id++;
						$sala++;

	    				if($sala == 13){
								$sala = 1;
								$aula++;
							}
	    				if($da == 2){
							if($aula == 11) {
	    						break;
							}
						}
						elseif ($aula == 10) {
								break;
							}
					}
	    		?>
    		</div>
    	</div>
    </tbody>
</table>