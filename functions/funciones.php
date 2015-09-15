<?php
require('conexion.php');

//FUNCIONES PHP

//funciones de estructura
function get_opc($val){
	$query = 'SELECT * FROM opciones WHERE id = "$val";';
	
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
	$query = 'SELECT * FROM notas WHERE estado = 1 order by stampa DESC;';
	$res = mysql_query($query);
	
	return $res;
	
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
						u.fullname as usuario, 
						e.valor as estado, 
						i.valor as importancia, 
						n.fecha_edit as modificacion
	FROM notas n, usuarios u, notas_status e, notas_nivel i
			WHERE n.estado = e.id
			AND n.importancia = i.id
			AND	n.estado <> '1'
			AND n.usuario = u.id
			ORDER BY n.id DESC;";
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
				AND		l.estatus = '2'
				AND		l.estatus = '4'
				ORDER BY l.id
				DESC LIMIT 10;";
	$result = mysql_query($query);
	
	return $result;
	
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
	if(empty($input)){
		$res = "EE:EE";
		
	}else{
		$res = $input;
	}
	
	return $res;
}

function designaEstado($inicio, $fin){
	if(empty($inicio)){
		$res = "null";
		}else{
			if(!empty($inicio) and empty($fin)){
				$res = '2';
			}else{
				if($inicio == $fin){
					$res = '1';
				}else{
					if($inicio < $fin){
						$res = '3';
					}else{
						$res = '4';
					}
				}
			}
		}
		return $res;
		
}

//updates
function newEstado_nota($id,$usuario){
	$query = "UPDATE notas SET estado = '2', fecha_edit = current_timestamp, usuario = '".$usuario."' WHERE id = '".$id."';";
	//$query = "UPDATE notas SET estado = '2', fecha_edit = current_timestamp, usuario  WHERE id = '".$id."';";
	$res = mysql_query($query);
	
	return $res;
	
}

function revalida_nota($id,$usuario){
	$query = "UPDATE notas SET estado = '1', fecha_edit = current_timestamp, usuario = '".$usuario."' WHERE id = '".$id."';";
	//$query = "UPDATE notas SET estado = '1', fecha_edit = current_timestamp  WHERE id = '".$id."';";
	$res = mysql_query($query);
	
	return $res;	
	
}

function nota_edit($array){
	
	$query = "UPDATE notas SET 	estado = '".$array['estado']."',
								fecha_edit= current_timestamp,
								usuario = '".$array['usuario']."',
								importacia = '".$array['nivel']."',
								descripcion = '".$array['texto']."'
						WHERE id = '".$id."';";
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

function inserta_nota($texto,$estatus,$tipo,$user){
	$query = "insert into notas (id, stampa, fecha_crea, fecha_edit, estado, importancia, usuario, descripcion) 
			values (null, current_timestamp, current_date, current_timestamp, '".$estatus."', '".$tipo."', '".$user."', '".$texto."');";
	$res = mysql_query($query);
	
	return $res;
}

function inserta_entrada($array){
	$query = "INSERT INTO lista (id, marca, fecha, hora_inicio, hora_termino, proceso, usuario, estatus, turno, titulo, descripcion)
			VALUES (null, 
					current_timestamp, 
					'".$array['fecha']."', 
					'".$array['inicio']."', 
					'".$array['termino']."', 
					'".$array['proceso']."', 
					'".$array['usuario']."', 
					'".$array['estatus']."', 
					'".$array['turno']."', 
					'".$array['titulo']."', 
					'".$array['descripcion']."';)";
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
?>

