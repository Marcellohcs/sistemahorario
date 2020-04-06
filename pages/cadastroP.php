<?php
    require '../controle/conexao.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css">
	<meta charset="utf-8">

</head>
<body>
    
<?php include '../menu.php'?>
<div class="container">           
          <p>Cadastrar Professores</p> 

            <form method="POST" action="../controle/cadastrarP.php">

              <input type="text" name="professor" placeholder="Nome do professor"><br>
              <input type="number" name="pro_dt"  placeholder="Diretor de turma"> <br>
              <input type="number" name="hora_aula" placeholder="Horas de aula"> <br>
              <input type="number" name="hora_planejamento" placeholder="Horas de planejamento">
<!-- //
                  <?php
                   // $sql = "SELECT * FROM tb_disciplina";
                    //$query = mysqli_query($conexao, $sql);
                    //$num = 1;  
                   /// echo "<table class='table'>";
                    //while ($row1 = mysqli_fetch_assoc($query)) {

                     //// echo "<tr><td><input type='checkbox' name='$num' id='$num' value='".$row1['dis_id']."'>";
                     // echo "<label for='$num'>".$row1['dis_nome']."</label>"."</td><tr>";
                        //$num = $num + 1;
                    //}
                    //echo "</table>"
                  ?> -->
              <input type="submit" value="Cadastrar" >
          </form>
    </body>
</html>
