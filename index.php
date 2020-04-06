<!DOCTYPE html>
<html>
<?php include 'controle/conexao.php'; ?>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" media="screen" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous" />
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/estilo.css">
	<meta charset="utf-8">
</head>
<body>
<?php include 'menu.php';?>
<div class=	"controle">
<label>
<form method="GET" action="#">
	<select required id="Dia" name="D">
	<option value="0">Dia da Semana</option>
	<option value="1" >Segunda</option>
	<option value="2">Terça</option>
	<option value="3">Quarta</option>
	<option value="4">Quinta</option>
	<option value="5">Sexta</option>
	</select>
	<select id="Semestre" required name="S">
		<option>SEMESTRE</option>
		<option value="1">1° SEMESTRE</option>
		<option value="2">2° SEMESTRE</option>
	</select>
	<select id="forma" required name="F">
		<option>Forma de Visualização</option>
		<option value="1">SALAS</option>
		<option value="2">TURMAS</option>
	</select>
<input type="submit" name="infor">
</form>

<?php
if (isset($_GET['infor'])) {
	$da = $_GET['D'];
	$semest = $_GET['S'];
	$Forma = $_GET['F'];
	include "pages/incluir.php";
	echo "<script> dir = document.getElementById('Dia') 
	 semest = document.getElementById('Semestre')
	 Forma = document.getElementById('forma')
			dir.selectedIndex = ".$da."
			semest.selectedIndex = ".$semest."
			Forma.selectedIndex = ".$Forma."

	</script>";
}
?>	
	<script src="jquery-3.3.1.min.js"></script>
	<script>

			function newFunction(vis, dia, semestre, ){

			$.ajax({
		 	url: 'index.php',
		 	method: 'post',
		 	data: infor,
		 	processData: false,
			 contentType: false
			}).done(function(resposta){		 	
			});
			}
			function faz(um, erro, salaq, aulaw){
				dia1 = um;
				dia2 = document.getElementById(dia1);
			    diaz = document.getElementById("Dia");
				dia2.selectedIndex = Math.floor(Math.random() * dia2.length);
				prof1 = dia2.options[dia2.selectedIndex].text;
				myFunction(um, salaq, aulaw)
				
			}
				aulax = 1
				salay = 1
			for ( i = 1; i <= 120; i++) {
				faz(i, 0, salay, aulax);


		   
			salay++
			if (i%12 == 0) { aulax++ ;
				salay = 1; }





			}
			function choque(idchoque, quando, onde){
				vchoque1 = document.getElementById(idchoque);
				choque1.selectedIndex = Math.floor(Math.random() * choque1.length);
				choque1.style.background = "blue";
				myFunction(idchoque, quando, onde);

			}

		function myFunction(id, aula, sala) {

			aula = aula;
			sala = "Sala"+sala;

		   x = document.getElementById(id).value;
		   z = document.getElementById(id)
		   d = document.getElementById("Dia").value;
		   dados = new FormData();
		  z.style.background = "white";
			dados.append('professor',  x);
			dados.append('aula', aula);
			dados.append('sala', sala);
			dados.append('dia', d);

			$.ajax({
		 	url: 'controle/controle.php',
		 	method: 'post',
		 	data: dados,
		 	processData: false,
			 contentType: false
			}).done(function(resposta){
				
				if (resposta == 1) {
					z.style.background = "red";
					choque(id, sala, aula);
					window.alert("CHOQUE");
				}
		 	
			});
			
		}
		 function vai(a1, a2, a3 ){
		    	 a = a1;
		    	 aa = a2;
		    	 aaa = a3;
		    	 dom = document.getElementById("Dia");
		    var dados = new FormData();
			dados.append('professor',  prof1);
			dados.append('aula', aulax);
			dados.append('sala', salay);
			dados.append('dia', diaz);

			$.ajax({
		 	url: 'controle/controle.php',
		 	method: 'post',
		 	data: dados,
		 	processData: false,
			 contentType: false
			}).done(function(resposta){
				if (resposta == 1) {
					//window.alert("CHOQUE");
				}
		 	
			});
			}
</script>
</div>
</body>
</html>