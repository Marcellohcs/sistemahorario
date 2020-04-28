<?php
    include '../controle/conexao.php';
?>
<!DOCTYPE html>
<head>
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
     <p >Disciplinas</p>
      <hr>
    </div>
<div class="container-fluid">
    <div class="col-sm-12 col-md-12 col-lg-12 row">
        <div class="col-sm-12 col-md-12 col-lg-12">
            <form method="POST" action="../controle/cadastrarD.php">
              <input type="text" class="form-control" name="disciplina" placeholder="Nome da Disciplina" required><br>
        </div>
          <div class=" col-sm-12 col-md-12 col-lg-12 row">
            <input type="submit" class="btn btn-outline-success btn-block butaum" value="Cadastrar Disciplina"></input>
          </div>
        </form>
      </div>
    <hr>
  <div class="col-sm-12 col-md-12 col-lg-12 row">
    <div class="rolagem">
        <table class="table table-hover">
              <td>Disciplinas</td>
              <td>Editar</td>
              <td>Excluir</td>
            </tr>
              <?php
                $sql = "SELECT * FROM tb_disciplina";
                $disciplina = mysqli_query($conexao, $sql);
                    while ($row = mysqli_fetch_assoc($disciplina)) {
                        echo "<tr>";
                            echo "<td>";
                                echo $row['dis_nome'];
                            echo "</td>";

                            echo "<td>";
                              echo "<a href='../controle/editarP.php?id=".$row['dis_id']."'>X</a>";
                            echo "</td>";

                             echo "<td>";
                              echo "<a href='../controle/excluirP.php?id=".$row['dis_id']."'>X</a>";
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
