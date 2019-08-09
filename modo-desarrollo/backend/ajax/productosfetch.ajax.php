
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

		$item = "id";
		$valor = $this->idProducto;

		$respuesta = ControladorProductos::ctrMostrarProductosfetch($item, $valor);

		echo json_encode($respuesta);

	}



}

	if(isset($_POST["idProducto"])){

		$traerProducto = new AjaxProductosfetch();
		$traerProducto -> idProducto = $_POST["idProducto"];
		$traerProducto -> ajaxTraerProductofetch();

	}
