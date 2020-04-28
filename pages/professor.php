<?php
    require_once('../controle/conexao.php');
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
 <div class="container">
    <div class="row">
                <table class = "table table-hover">
                <thead >
                    <tr>
                        <th scope = "col">Id</th>
                        <th scope = "col">Nome</th>
                        <th scope = "col">Disciplinas</th>
                    </tr>      
                </thead>
                    <tbody>
                        <?php
                            $sql = "SELECT prof.pro_id ,prof.pro_nome, dis.dis_nome from tb_professor prof JOIN tb_professor_has_tb_disciplina prof_dis ON prof_dis.tb_professor_pro_id = prof.pro_id JOIN tb_disciplina dis ON dis.dis_id = prof_dis.tb_disciplina_dis_id order by pro_id asc";
                            $query = mysqli_query($conexao, $sql);
                            while ($dados = mysqli_fetch_assoc($query)) {
                                $id = $dados['pro_nome'];  
                        ?>
                        <tr>
                            <td>
                                <?php
                                    echo $dados['pro_id']."<br>";
                                ?>
                            </td>
                            <td>
                                <?php
                                    echo $dados['pro_nome']."<br>";
                                ?>
                            </td>
                            <td>
                                <?php
                                    echo $dados['dis_nome']."<br>";
                                ?>
                            </td>
                        </tr>
                        <?php
                            }
                        ?>
                    </tbody>
                </table>
        </div>
</div> 
</body>
</html>