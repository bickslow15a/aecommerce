<?php

require_once "../controladores/productos.controlador.php";
require_once "../modelos/productos.modelo.php";


class TablaProductosVentas{

 	/*=============================================
 	 MOSTRAR LA TABLA DE PRODUCTOS
  	=============================================*/ 

	public function mostrarTablaProductosVentas(){

		$item = null;
    	$valor = null;
    	$orden = "id";

  		$productos = ControladorProductos::ctrMostrarProductos($item, $valor, $orden);


 		
  		if(count($productos) == 0){

  			echo '{"data": []}';

		  	return;
  		}	
		
  		$datosJson = '{
		  "data": [';

		  for($i = 0; $i < count($productos); $i++){

		  	/*=============================================
 	 		TRAEMOS LA IMAGEN
  			=============================================*/ 

		  	$imagen = "<img src='".$productos[$i]["portada"]."' width='40px'>";

		  	/*=============================================
 	 		STOCK
  			=============================================*/ 

  			if($productos[$i]["stock"] <= 10){

  				$stock = "<button class='btn btn-danger'>".$productos[$i]["stock"]."</button>";

  			}else if($productos[$i]["stock"] >= 11 && $productos[$i]["stock"] <= 15){

  				$stock = "<button class='btn btn-warning'>".$productos[$i]["stock"]."</button>";

  			}else{

  				$stock = "<button class='btn btn-success'>".$productos[$i]["stock"]."</button>";

			  }
			/*=============================================
 	 		TRAEMOS LAS TALLAS Y COLORES DEL PRODUCTO
			  =============================================*/ 

			$listadetalle = json_decode($productos[$i]["detalles"], true);

			$talla = "<select  width='40px' id='talladt'>";
			for($j = 0; $j < count($listadetalle["Talla"]); $j++){
		  	$talla .= "<option value='".$listadetalle["Talla"][$j]."'>".$listadetalle["Talla"][$j]."</option>";

		 	}
		  	$talla .= "</select>";

			$color = "<select  width='40px' id='colordt'>";
			for($k = 0; $k < count($listadetalle["Color"]); $k++){
		  	$color .= "<option value='".$listadetalle["Color"][$k]."'>".$listadetalle["Color"][$k]."</option>";
		 	}

		  	$color .= "</select>";

			  
	 	  	/*=============================================
 	 		TRAEMOS LAS ACCIONES
  			=============================================*/ 

		  	$botones =  "<div class='btn-group'><button class='btn btn-primary agregarProducto recuperarBoton' idProducto='".$productos[$i]["id"]."'>Agregar</button></div>"; 

		  	$datosJson .='[
			      "'.($i+1).'",
			      "'.$imagen.'",
			      "'.$productos[$i]["id"].'",
				  "'.$productos[$i]["titulo"].'",
			      "'.$stock.'",
			      "'.$talla.'",
			      "'.$color.'",
			      "'.$botones.'"
			    ],';

		  }

		  $datosJson = substr($datosJson, 0, -1);

		 $datosJson .=   '] 

		 }';

		// $listadetalle = json_decode($productos[0]["detalles"], true);
		// $cont=0;

		// echo json_encode($listadetalle["Talla"]);
		// for($j = 0; $j < count($listadetalle["Talla"]); $j++){
		//   $talla = 	"El valor de". $listadetalle['Talla'][$j] ."es:". $listadetalle['Talla'][$j];
		//   echo $talla;
		// }

		echo $datosJson;


	}


}

/*=============================================
ACTIVAR TABLA DE PRODUCTOS
=============================================*/ 
$activarProductosVentas = new TablaProductosVentas();
$activarProductosVentas -> mostrarTablaProductosVentas();
