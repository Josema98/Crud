<?php
include("conexion.php");

    //cleintes
    $id_cliente = $_POST["id_cliente"];
    $nombre = $_POST["nombre"];
    $pin = $_POST["pin"];
    $opcion = $_POST["opcion"];

    //crud clientes
switch($opcion){
        case 'registrar':
            if( $nombre != "" && $pin != ""){
                 $existe = existe_cliente($nombre, $conexion);
                if($existe >0){
                    $informacion["respuesta"]="EXISTE";
                    echo json_encode($informacion);
                }else{
                    registrar($nombre,$pin, $conexion);
            }
                            
            }else{
            $informacion["respuesta"] = "VACIO";
                echo json_encode($informacion);
            }
            break;
        case 'modificar':
            modificar( $id_cliente,$nombre,$pin, $conexion);
            break;
        
        case 'eliminar':
            eliminar($id_cliente,$conexion);
            break;

        default:
        $informacion["respuesta"]= "OPCION VACIA";
            break;
    }

    function existe_cliente($nombre, $conexion){
		$query = "SELECT id_cliente FROM clientes WHERE nombre = '$nombre';";
		$resultado = mysqli_query($conexion, $query);
		$existe_cliente= mysqli_num_rows( $resultado );
		return $existe_cliente;
	}

	function registrar($nombre,$pin,  $conexion){
		$query = "INSERT INTO clientes VALUES(0, '$nombre','$pin' );";
		$resultado = mysqli_query($conexion, $query);		
		verificar_resultado($resultado);
		cerrar($conexion);
	}

    function modificar( $id_cliente,$nombre,$pin, $conexion){
       $query = "UPDATE clientes SET nombre='$nombre',
                                        pin= '$pin'
                                    WHERE id_cliente = $id_cliente ";
        $resultado = mysqli_query($conexion,$query);
        verificar_resultado($resultado);
        cerrar($conexion);  
    }
    function eliminar($id_cliente,$conexion){
        $query = "DELETE FROM clientes WHERE id_cliente = $id_cliente ";
        $resultado = mysqli_query($conexion,$query);
        verificar_resultado($resultado);
        cerrar($conexion);  
    }
    function verificar_resultado($resultado){
        if(!$resultado)   $informacion["respuesta"] = "ERROR";
        else $informacion["respuesta"] = "BIEN";
        echo json_encode($informacion);
    }  
    function cerrar($conexion){
        mysqli_close($conexion);
    }

?>