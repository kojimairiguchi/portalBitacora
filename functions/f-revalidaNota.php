<?php
require_once('funciones.php');

session_start();
if(isset($_POST['actualiza'])){
	if(!empty($_POST['nota'])){
		foreach($_POST['nota'] as $id){
			revalida_nota($id,$_SESSION['id']);

		}
	}
	header('Location: ../index.php#notas');
}
?>
