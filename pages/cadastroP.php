<?php
    require '../controle/conexao.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/estilo.css">
  <meta charset="utf-8">
</head>
<body>
    
<?php 
  include 'menu.php'; 
?>
<div class="prof">
  <div class="titulo">
     <p >Professores</p>
      <hr>
    </div>
<div class="container-fluid">
    <div class="col-sm-12 col-md-12 col-lg-12 row">
        <div class="col-sm-6 col-md-6 col-lg-6">
            <form method="POST" action="../controle/cadastrarP.php">
              <input type="text" class="form-control" name="professor" placeholder="Nome do professor" required><br>
              <input type="number" class="form-control" name="hora_aula" placeholder="Horas de aula" required> <br>
              <input type="number" class="form-control" name="hora_planejamento" placeholder="Horas de planejamento" required><br>
              <div class="custom-control custom-switch">
                <!-- <input type="checkbox" class="custom-control-input" name="pro_dt"> -->
                <input type='checkbox' class='custom-control-input' name='$num' id='$num' value='".$row1['dis_id>
                <label class=" from-control custom-control-label">Diretor de Turma ?</label><br>
              </div>
        </div>
            <div class="disciplina">
              <div class="custom-control custom-switch">
                <?php
                    $sql = "SELECT * FROM tb_disciplina";
                    $query = mysqli_query($conexao, $sql);
                    $num = 1;  
                    echo "<table class='table'>";
                        while ($row1 = mysqli_fetch_assoc($query)) {
                          echo "<tr><td><input type='checkbox' class='custom-control-input' name='$num' id='$num' value='".$row1['dis_id']."'>";
                            echo "<label class='custom-control-label' for='$num'>".$row1['dis_nome']."</label>"."</td><tr>";
                                  $num = $num + 1;
                        }
                              echo "</table>";
                ?>
              </div>
          </div>
          <div class=" col-sm-12 col-md-12 col-lg-12 row">
            <input type="submit" class="btn btn-outline-success btn-block butaum" value="Cadastrar Professor"></input>
          </div>
        </form>
      </div>
    <hr>
  <div class="col-sm-12 col-md-12 col-lg-12 row">
    <div class="rolagem">
        <table class="table  table-hover">
            <tr class="trhead">
              <td>Nome</td>
              <td>Disciplinas</td>
              <td>Editar</td>
              <td>Excluir</td>
            </tr>
              <?php
                $sql = "SELECT * FROM tb_professor";
                $professor = mysqli_query($conexao, $sql);
                while ($row1 = mysqli_fetch_assoc($professor)) {
                  $pro_id= $row1['pro_id']; 
                    echo "<tr>";
                      echo "<td>";
                        echo $row1['pro_nome'];
                      echo "</td>";
                    echo "<td>";

                  $sql = "SELECT dis_nome FROM tb_disciplina dis INNER JOIN tb_professor_has_tb_disciplina pro_dis ON pro_dis.tb_disciplina_dis_id = dis.dis_id INNER JOIN tb_professor pro ON pro_dis.tb_professor_pro_id = pro.pro_id WHERE pro.pro_id = $pro_id";
                  $disciplina = mysqli_query($conexao,$sql);
                  while ($row2 = mysqli_fetch_assoc($disciplina)) {
                    echo $row2['dis_nome'];
                  }
                  echo "</td>";

                    echo "<td>";
                      echo "<a href='../controle/editarP.php?id=".$row1['pro_id']."'>X</a>";
                    echo "</td>";

                     echo "<td>";
                      echo "<a href='../controle/excluirP.php?id=".$row1['pro_id']."'>X</a>";
                    echo "</td>";

                  echo "</tr>";
                }
              ?>
            </table>
          </div>
        </div>
      </div>
    </div>     
</body>
</html>
