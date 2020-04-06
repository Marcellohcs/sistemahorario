<?php
    include '../controle/conexao.php';
?>
<!DOCTYPE html>
<head>

    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

</head>
<body>
    <?php include '../menu.php';?>
    	<div class="container">
    		<span>Professor</span></br>
    			<input type="text" id="pro_nome"></input>
    		<span>Disciplina</span></br>
    			<input type="text" id="dis_nome">
    		<button id ="salvar_cadastro">Enviar</button></br>
            <div id="mensagenss"></div>
    	</div>
</body>
</html>
