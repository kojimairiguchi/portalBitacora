<?php
require('conexion.php');
//$db_handle = new DBController();

//FUNCIONES PHP

//funciones de estructura
function get_opc($val){
	//$query = 'SELECT * FROM opciones WHERE id = "$val";';
	$query = $db_handle->runQuery('SELECT * FROM opciones WHERE id = "$val";');
	$result = mysql_query($query);

	return $result;
}


//funciones validacion
function comprobarLogin($usuario,$password){
	$query = "SELECT * FROM usuarios WHERE username = '".$usuario."' and password = '".$password."';";
	$result = mysql_query($query);

	return $result;

}


function validaTurno($turno,$fecha,$inicio,$fin){
	$query = "SELECT * FROM usuarios_turnos WHERE id = '".$turno."' AND hora_entrada < '".$inicio."' AND hora_salida >'".$fin."' ;";
	$res = mysql_query($query);
	$res = mysql_num_rows($res);
	//return $res;

	if($turno == '3' and $res >='0'){
		$fecha_fin = date("d-m-Y",strtotime ( '-1 day' , strtotime ( $fecha ) ) );
	}else{
		$fecha_fin = $fecha;
	}
	return $fecha_fin;

}

function get_usuario($id){
	$query = "SELECT * FROM usuarios WHERE id = ".$id.";";
	$res = mysql_query($query);

	while($lt = mysql_fetch_array($res)){
		$output = $lt['fullname'];
	}
	return $output;
}
//funciones de listado

function listadoProcesos(){
	$query = "SELECT * FROM lista_procesos;";
	$result = mysql_query($query);


	return $result;

}
function list_tipo_notas(){
	$query = "SELECT * FROM notas_nivel;";
	$result = mysql_query($query);

	return $result;

}

function list_estatus_notas(){
	$query = "SELECT * FROM notas_status;";
	$result = mysql_query($query);

	return $result;

}

function listadoNotas(){
	$query = 'SELECT * FROM notas WHERE estado <> 2 order by stampa DESC;';
	$res = mysql_query($query);

	return $res;

}

function iconosNotas($id){
	$query = "SELECT estado FROM notas WHERE id = '".$id."';";
	$res = mysql_query($query);
	while($salida = mysql_fetch_array($res)){
		if ($salida['estado'] == '1') {
			$output = "<span class='label label-success'>Vigente</span>&nbsp; &nbsp; ";
		}
		else{
			if ($salida['estado'] == '2'){
				$output = "<span class='label label-danger'>Eliminada</span>&nbsp; &nbsp; ";
			}
			else{
				if ($salida['estado'] == '3'){
					$output = "<span class='label label-warning'>Importante</span>&nbsp; &nbsp; ";
				}
				else{
					if($salida['estado'] == '4'){
						$output = "<span class='label label-info'>En Evaluacion</span>&nbsp; &nbsp; ";
					}
				}
			}
		}

	}

	return $output;
}

function iconosLista($id){
	$query = "SELECT l.estatus, e.descripcion  FROM lista l, lista_status e WHERE l.id = '".$id."' AND l.estatus = e.id ;";
	$res = mysql_query($query);

	while($la = mysql_fetch_array($res)){
		if($la['estatus'] == '1'){
			$output = "<span class='label label-success' data-container='body' data-toggle='popover' data-placement='top' data-content='".$la['descripcion']."'>Ejecutado</span>";
		}else{
			if($la['estatus'] == '2'){
				$output = "<span class='label label-primary' data-container='body' data-toggle='popover' data-placement='top' data-content='".$la['descripcion']."'>En Ejecucion</span>";
			}else{
				if($la['estatus'] == '3'){
					$output = "<span class='label label-info' data-container='body' data-toggle='popover' data-placement='top' data-content='".$la['descripcion']."'>Finalizado</span>";
				}else{
					if($la['estatus'] == '4'){
						$output = "<span class='label label-default' data-container='body' data-toggle='popover' data-placement='top' data-content='".$la['descripcion']."'>Inmediato</span>";
					}else{
						if($la['estatus'] == '5'){
							$output = "<span class='label label-warning' data-container='body' data-toggle='popover' data-placement='top' data-content='".$la['descripcion']."'>Pendiente</span>";
						}else{
							$output = "<span class='label label-danger' data-container='body' data-toggle='popover' data-placement='top' data-content='".$la['descripcion']."'>Eliminada</span>";
						}
					}
				}
			}
		}
	}
	return $output;
}

function iconoPend($id){
	$query = "SELECT estatus FROM lista WHERE id = '".$id."';";
	$res = mysql_query($query);
	while ($salida = mysql_fetch_array($res)){
		if ($salida['estatus'] == '5'){
			$output = "<span class='label label-warning'>Pendiente</span>";
		}else{
			if ($salida['estatus'] = '2'){
				$output = "<span class='label label-primary'>En ejecucion</span>";
			}
		}

	}
	return $output;
}

function obtener_notas($id){
	$query = "SELECT * FROM notas WHERE id = '".$id."' and estado <> '2';";
	$res = mysql_query($query) or mysql_error();

	return $res;
}

function ultimasNotas(){
	$query = "SELECT 	n.id as id,
						n.fecha_crea as fecha,
						n.descripcion as descripcion,
						u.username as usuario,
						e.valor as estado,
						i.valor as importancia,
						n.fecha_edit as modificacion
	FROM notas n, usuarios u, notas_status e, notas_nivel i
			WHERE n.estado = e.id
			AND n.importancia = i.id
			AND	n.estado <> '1'
			AND n.usuario = u.id
			ORDER BY n.id DESC
			LIMIT 10;";

	$res = mysql_query($query);

	return $res;
}

function listaTurno(){
	$query = "SELECT * FROM usuarios_turnos;";
	$result = mysql_query($query);

	return $result;

}

function ultimasEntradas(){
	$query = "	SELECT 	l.id,
						p.descripcion as tipo,
        				l.titulo,
        				l.descripcion,
        				l.hora_inicio as inicio,
        				l.hora_termino as fin,
        				e.valor as estatus
				FROM   	lista l,
        				lista_procesos p,
        				lista_status e,
        				usuarios u
				WHERE   l.proceso = p.id
				AND     l.estatus = e.id
				AND     l.usuario = u.id
				AND 		l.estatus <> '6'
				ORDER BY l.id
				DESC LIMIT 10;";
	$result = mysql_query($query);

	return $result;
}

function entradasEjecucion(){
		$query = "	SELECT 	l.id,
						p.descripcion as tipo,
        				l.titulo,
        				l.descripcion,
        				l.hora_inicio as inicio,
        				l.hora_termino as fin,
        				e.valor as estatus
				FROM   	lista l,
        				lista_procesos p,
        				lista_status e,
        				usuarios u
				WHERE   l.proceso = p.id
				AND     l.estatus = e.id
				AND     l.usuario = u.id
				AND		l.estatus <> '1'
				AND		l.estatus <> '3'
				AND 	l.estatus <> '4'
				AND 	l.estatus <> '6'
				ORDER BY l.id
				DESC LIMIT 10;";
	$result = mysql_query($query);

	return $result;

}

function contarActivas() {
	$query = "SELECT COUNT(*) as contar FROM lista WHERE estatus <> '1' AND estatus <> '3' AND estatus <> '4' and estatus <> '6';";
	$res = mysql_query($query);

	return $res;
}

function entradaTurno($fecha,$turno){
		$query = "	SELECT 	l.id,
						p.descripcion as tipo,
        				l.titulo,
        				l.descripcion,
        				l.hora_inicio as inicio,
        				l.hora_termino as fin,
        				l.fecha as fecha,
        				l.turno as turno,
        				e.valor as estatus
				FROM   	lista l,
        				lista_procesos p,
        				lista_status e,
        				usuarios u
				WHERE   l.proceso = p.id
				AND     l.estatus = e.id
				AND     l.usuario = u.id
				AND		l.fecha = '".$fecha."'
				AND		l.turno = '".$turno."'
				ORDER BY l.id;";
	$result = mysql_query($query);

	return $result;

}

//funciones de conversor
function convertir_fecha($date,$val){
	if($val == 0){
		$fecha = date("Y-m-d",strtotime($date));
	}else{
		$fecha = date("d-m-Y",strtotime($date));
	}

	return $fecha;
}

function fecha_visible($date,$val){
	if($val == 0){
		$fecha = date("Y-m-d H:i:s",strtotime($date));
	}else{
		$fecha = date("d-m-Y H:i:s",strtotime($date));
	}

	return $fecha;

}

function noTime($input){
	if(!empty($input)){
		$res = $input;
	}else{
		$res = "EE:EE";
	}

	return $res;
}

function designaEstado($inicio, $fin){
	if(!empty($inicio) and !empty($fin)){
		if($inicio === "EE:EE" and $fin === "EE:EE"){
			$res = "null";
		}else{
			if($inicio === "EE:EE" and $fin <> "EE:EE"){
				$res = "3";
			}else{
				if($inicio <> "EE:EE" and $fin === "EE:EE"){
					$res = "2";
				}else{
					if($inicio === $fin){
						$res = "4";
					}else{
						$res = "1";

					}
				}
			}
		}

	}

	return $res;
}

function turnoValida($fecha,$turno){
	$query = "SELECT * FROM lista WHERE turno = '".$turno."';";

	$res = mysql_query($query);

	return $res;
}

//updates
function newEstado_nota($id,$usuario){
	$query = "UPDATE notas SET estado = '2', fecha_edit = current_timestamp, usuario = '".$usuario."' WHERE id = '".$id."';";

	$res = mysql_query($query);

	return $res;

}

function revalida_nota($id,$usuario){
	$query = "UPDATE notas SET estado = '1', fecha_edit = current_timestamp, usuario = '".$usuario."' WHERE id = '".$id."';";

	$res = mysql_query($query);

	return $res;

}

function nota_edit($array){
	$query = "UPDATE notas SET fecha_edit = current_timestamp,
								estado = '".$array['estatus']."',
								importancia = '".$array['tipo']."',
								usuario = '".$array['usuario']."',
								descripcion = '".$array['texto']."'
						WHERE id = '".$array['id']."';";

	$res = mysql_query($query);

	return $res;
}

function edicion_entrada($array){
	$query = "UPDATE lista SET 	hora_inicio = '".$array['inicio']."',
															hora_termino = '".$array['fin']."',
															titulo = '".$array['titulo']."',
															descripcion = '".$array['texto']."',
															usuario = '".$array['usuario']."',
															estatus = '".$array['estatus']."'
										WHERE id = '".$array['id']."';";
	$res = mysql_query($query);

	return $res;
}

function anula_entrada($array){
	$query = "UPDATE lista SET estatus = '".$array['estatus']."' WHERE id = '".$array['id']."';";
	$res = mysql_query($query);

	return $res;
}


//inserciones

function crea_usuario($array){

	$query = "INSERT INTO usuarios (id,username, fullname, email, password, level)
			VALUES (null, '".$array['usuario']."', '".$array['nombre']."', '".$array['mail']."', '".$array['password']."', '5' ); ";
	$res = mysql_query($query);

	return $res;

}

function inserta_nota($array){
	$query = "INSERT INTO notas (id, stampa, fecha_crea, fecha_edit, estado, importancia, usuario, descripcion)
			VALUES (null,
				current_timestamp,
				current_date,
				current_timestamp,
				'".$array['estado']."',
				'".$array['importancia']."',
				'".$array['usuario']."',
				'".$array['notas']."');";
	$res = mysql_query($query);

	return $res;
}

function inserta_entrada($ingreso){
	$query = "INSERT INTO lista (id, marca, fecha, hora_inicio, hora_termino, proceso, usuario, estatus, turno, titulo, descripcion)
			VALUES (null,
					current_timestamp,
					'".$ingreso['fecha']."',
					'".$ingreso['inicio']."',
					'".$ingreso['termino']."',
					'".$ingreso['proceso']."',
					'".$ingreso['usuario']."',
					'".$ingreso['estatus']."',
					'".$ingreso['turno']."',
					'".$ingreso['titulo']."',
					'".$ingreso['descripcion']."');";
			$res = mysql_query($query);

	return $res;
}

function listaChklst(){
	$query = "SELECT * FROM  chklist_list_main ORDER BY chklist_list_main.horario ASC;";
	$res = mysql_query($query);

	return $res;
}

function validaDate($opc){
	$var = date("D", $opc);
	switch ($opc) {
		case 'Mon':
			$resp = 'L';
			break;
		case 'Tue':
			$resp = 'M';
			break;
		case 'Wed':
			$resp = 'N';
			break;
		case 'Thu':
			$resp = 'J';
			break;
		case 'Fri':
			$resp = 'V';
			break;
		case 'Sat':
			$resp = 'S';
			break;
		case 'Sun':
			$resp = 'D';
			break;
		default:
			$resp = 'X';
			break;
	}
}

function saludoNew($time){
 if ($time > '07:00' AND $time < '12:00') {
 	$output = "¡Buenos Dias!";
}else{
	if($time > '12:00' AND $time < '19:59') {
		$output = "¡Buenas Tardes!";
	}else{
		$output = "¡Buenas Noches!";
	}
}
return $output;
}

function UltimaBitacora(){
	$query = "SELECT * FROM meta_bitacora ORDER BY id DESC LIMIT 1;";
	$res = mysql_query($query);

	return $res;
}

function botonBitacora($var){
	while($ub = mysql_fetch_array($var)){
		if (empty($ub['cierre'])) {
			$res = "<input type='submit' class='btn btn-danger' value='Cerrar Bitacora' id='cierre' name='cierre' />\t Bitacora Creada en ".fecha_visible($ub['apertura'],'1')." Por <strong>".get_usuario($ub['usr_apertura'])."</strong>.";
		}else{
			$res = "<input type='submit' class='btn btn-success' value='Crear Bitacora' id='apertura' name='apertura' />";
		}
	}
	return $res;
}

function totalesEstatus($bitacora){
	$res1 = mysql_query("SELECT COUNT(*) FROM lista WHERE bitacora = ".$bitacora.";");
	$total = mysql_result($res1, 0);
	$res2 = mysql_query("SELECT COUNT(*) FROM lista WHERE bitacora = ".$bitacora." AND estatus = '1' or estatus = '3' or estatus = '4';");
	$ejecut = mysql_result($res2, 0);
	$res3 = mysql_query("SELECT COUNT(*) FROM lista WHERE bitacora = ".$bitacora." AND estatus = '2';");
	$enejec = mysql_result($res3, 0);
	$res4 = mysql_query("SELECT COUNT(*) FROM lista WHERE bitacora = ".$bitacora." AND estatus = '5';");
	$pend = mysql_result($res4, 0);
	$res5 = mysql_query("SELECT COUNT(*) FROM lista WHERE bitacora = ".$bitacora." AND estatus = '6';");
	$elim = mysql_result($res5, 0);
	$por_ej = round((($ejecut * 100)/$total), 2);
	$por_en = round((($enejec * 100)/$total), 2);
	$por_pe = round((($pend * 100)/$total), 2);
	$por_el = round((($elim * 100)/$total), 2);
	$output = '<div class="progress progress-striped active">
  <div class="progress-bar progress-bar-success" style="width: '.$por_ej.'%"></div>
  <div class="progress-bar progress-bar-primary" style="width: '.$por_en.'%"></div>
  <div class="progress-bar progress-bar-warning" style="width: '.$por_pe.'%"></div>
	<div class="progress-bar progress-bar-danger" style="width: '.$por_el.'%"></div>
</div>';


	return $output;
}

function set_bitacora($boolean){
	if($boolean === true){
		mysql_query("INSERT into meta_bitacora (id, estampa, apertura, usr_apertura) VALUES (null, current_timestamp, current_timestamp, ".$_SESSION['id'].");");
	}else{
		mysql_query("UPDATE meta_bitacora SET ()");
	}
}
?>
