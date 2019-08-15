
<?php

require_once "../controladores/productos.controlador.php";
require_once "../modelos/productos.modelo.php";

require_once "../controladores/categorias.controlador.php";
require_once "../modelos/categorias.modelo.php";

require_once "../controladores/subcategorias.controlador.php";
require_once "../modelos/subcategorias.modelo.php";

require_once "../controladores/cabeceras.controlador.php";
require_once "../modelos/cabeceras.modelo.php";

class AjaxProductosfetch{

/*=============================================
	TRAER PRODUCTOS
	=============================================*/	

	public $idProducto;


	public function ajaxTraerProductofetch(){
	if($this->traerProductos == "ok"){
	  $item = null;
      $valor = null;
      $orden = "id";

      $respuesta = ControladorProductos::ctrMostrarProductosfetch($item, $valor,
	  $orden);
	  
	  echo json_encode($respuesta);
	  
	}else if($this->nombreProducto != ""){
	  $item = "titulo";
      $valor = $this->nombreProducto;
      $orden = "id";

      $respuesta = ControladorProductos::ctrMostrarProductosfetch($item, $valor,
        $orden);

      echo json_encode($respuesta);
	}else{
		$item = "id";
		$valor = $this->idProducto;

		$respuesta = ControladorProductos::ctrMostrarProductosfetch($item, $valor);

		echo json_encode($respuesta);
		}
	}
}



	if(isset($_POST["idProducto"])){

		$traerProducto = new AjaxProductosfetch();
		$traerProducto -> idProducto = $_POST["idProducto"];
		$traerProducto -> ajaxTraerProductofetch();

	}
	/*=============================================
	TRAER PRODUCTO
	=============================================*/ 

	if(isset($_POST["traerProductos"])){

	$traerProductos = new AjaxProductos();
	$traerProductos -> traerProductos = $_POST["traerProductos"];
	$traerProductos -> ajaxTraerProductofetch();

	}

	/*=============================================
	TRAER PRODUCTO
	=============================================*/ 

	if(isset($_POST["nombreProducto"])){

	$traerProductos = new AjaxProductos();
	$traerProductos -> nombreProducto = $_POST["nombreProducto"];
	$traerProductos -> ajaxTraerProductofetch();

	}