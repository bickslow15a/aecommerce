<?php
$url = Ruta::ctrRuta();

if(!isset($_SESSION["validarSesion"])){

   echo '<script>window.location = "'.$url.'";</script>';

   exit();

}

#requerimos las credenciales de paypal
require 'extensiones/bootstrap.php';
require_once "modelos/carrito.modelo.php";

#importamos librería del SDK
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;

/*=============================================
PAGO PAYPAL
=============================================*/

#evaluamos si la compra está aprobada
if(isset( $_GET['paypal']) && $_GET['paypal'] === 'true'){

   #recibo los productos comprados
   $productos = explode("-", $_GET['productos']);
   $cantidad = explode("-", $_GET['cantidad']);
   $pago = explode("-", $_GET['pago']);

   #capturamos el Id del pago que arroja Paypal
   $paymentId = $_GET['paymentId'];

   #Creamos un objeto de Payment para confirmar que las credenciales si tengan el Id de pago resuelto
   $payment = Payment::get($paymentId, $apiContext);

   #creamos la ejecución de pago, invocando la clase PaymentExecution() y extraemos el id del pagador
   $execution = new PaymentExecution();
   $execution->setPayerId($_GET['PayerID']);

   #validamos con las credenciales que el id del pagador si coincida
   $payment->execute($execution, $apiContext);
   $datosTransaccion = $payment->toJSON();

   $datosUsuario = json_decode($datosTransaccion);

   $emailComprador = $datosUsuario->payer->payer_info->email;
   $dir = $datosUsuario->payer->payer_info->shipping_address->line1;
   $ciudad = $datosUsuario->payer->payer_info->shipping_address->city;
   $estado = $datosUsuario->payer->payer_info->shipping_address->state;
   $codigoPostal = $datosUsuario->payer->payer_info->shipping_address->postal_code;
   $pais = $datosUsuario->payer->payer_info->shipping_address->country_code;

   $direccion = $dir.", ".$ciudad.", ".$estado.", ".$codigoPostal;
         

   $datosCompra = json_decode($datosTransaccion);
   
   $ProductoPedido = $datosCompra->transactions[0]->item_list->items[0]->name;
   $CantidadPedido = $datosCompra->transactions[0]->item_list->items[0]->quantity;
   // $item =$datosCompra->item_list->items->name;
   #Actualizamos la base de datos
   for($i = 0; $i < count($productos); $i++){
// chapiama--->>><<< cambio y agrego en la base de datos los campos pedido y cantidad e inserto en carritomodelo::ctrnuevas compras los campos agregados.
         $datos = array("idUsuario"=>$_SESSION["id"],
                     "idProducto"=>$productos[$i],
                     "pedido"=>$ProductoPedido,
                     "cantidad"=>$CantidadPedido,
                     "metodo"=>"paypal",
                     "email"=>$emailComprador,
                     "direccion"=>$direccion,
                     "pais"=>$pais,
                     "pago"=>$pago[$i]);

         $respuesta = ControladorCarrito::ctrNuevasCompras($datos);

         $ordenar = "id";
         $item = "id";
         $valor = $productos[$i];

         $productosCompra = ControladorProductos::ctrListarProductos($ordenar, $item, $valor);

        
          
         foreach ($productosCompra as $key => $value) {

            $item1 = "ventas";
            $valor1 = $value["ventas"] + $cantidad[$i];
            $item2 = "id";
            $valor2 =$value["id"];

            $actualizarCompra = ControladorProductos::ctrActualizarProducto($item1, $valor1, $item2, $valor2);

           
            // REDUCIR STOCK
             $item2 = "stock";
             $valor2 = $value["stock"] - $cantidad[$i];
             $item2a = "id";
             $valor2a =$value["id"] ;

             $nuevoStock= ControladorProductos::ctrActualizarProducto($item2, $valor2, $item2a, $valor2a);
            
         }

         if($respuesta == "ok" && $actualizarCompra == "ok" && $nuevoStock == "ok"){

            echo '<script>

            localStorage.removeItem("listaProductos");
            localStorage.removeItem("cantidadCesta");
            localStorage.removeItem("sumaCesta");
            window.location = "'.$url.'perfil";

            </script>';

         }

   }

   /*=============================================
   PAGO PAYU
   =============================================*/

}else if(isset( $_GET['payu']) && $_GET['payu'] === 'true'){ 

   $respuesta = ControladorCarrito::ctrMostrarTarifas();

   $ApiKey = $respuesta["apiKeyPayu"];
   $merchant_id = $_REQUEST['merchantId'];
   $referenceCode = $_REQUEST['referenceCode'];
   $TX_VALUE = $_REQUEST['TX_VALUE'];
   $New_value = number_format($TX_VALUE, 1, '.', '');
   $currency = $_REQUEST['currency'];
   $transactionState = $_REQUEST['transactionState'];
   $firma_cadena = "$ApiKey~$merchant_id~$referenceCode~$New_value~$currency~$transactionState";
   $firmacreada = md5($firma_cadena);
   $firma = $_REQUEST['signature'];
   $reference_pol = $_REQUEST['reference_pol'];
   $cus = $_REQUEST['cus'];
   $extra1 = $_REQUEST['description'];
   $pseBank = $_REQUEST['pseBank'];
   $lapPaymentMethod = $_REQUEST['lapPaymentMethod'];
   $transactionId = $_REQUEST['transactionId'];

   if ($_REQUEST['transactionState'] == 4 ) {
      $estadoTx = "Transacción aprobada";
   }

   else if ($_REQUEST['transactionState'] == 6 ) {
      $estadoTx = "Transacción rechazada";
   }

   else if ($_REQUEST['transactionState'] == 104 ) {
      $estadoTx = "Error";
   }

   else if ($_REQUEST['transactionState'] == 7 ) {
      $estadoTx = "Transacción pendiente";
   }

   else {
      $estadoTx=$_REQUEST['mensaje'];
   }


   if (strtoupper($firma) == strtoupper($firmacreada) && $estadoTx == "Transacción aprobada") {

      $productos = explode("-", $_GET['productos']);
      $cantidad = explode("-", $_GET['cantidad']);
      $pago = explode("-", $_GET['pago']);

      #Actualizamos la base de datos
      for($i = 0; $i < count($productos); $i++){

         $datos = array("idUsuario"=>$_SESSION["id"],
                        "idProducto"=>$productos[$i],
                        "metodo"=>"payu",
                        "email"=>$_REQUEST['buyerEmail'],
                        "direccion"=>"",
                        "pais"=>"",
                        "pago"=>$pago[$i]);

         $respuesta = ControladorCarrito::ctrNuevasCompras($datos);

         $ordenar = "id";
         $item = "id";
         $valor = $productos[$i];

         $productosCompra = ControladorProductos::ctrListarProductos($ordenar, $item, $valor);

         foreach ($productosCompra as $key => $value) {

            $item1 = "ventas";
            $valor1 = $value["ventas"] + $cantidad[$i];
            $item2 = "id";
            $valor2 =$value["id"];

            $actualizarCompra = ControladorProductos::ctrActualizarProducto($item1, $valor1, $item2, $valor2);


            
         }

         if($respuesta == "ok" && $actualizarCompra == "ok"){

            echo '<script>

            localStorage.removeItem("listaProductos");
            localStorage.removeItem("cantidadCesta");
            localStorage.removeItem("sumaCesta");
            window.location = "'.$url.'perfil";

            </script>';

         }

      }

   }

}

/*=============================================
ADQUISICIONES GRATUITAS
=============================================*/
else if(isset( $_GET['gratis']) && $_GET['gratis'] === 'true'){

   $producto = $_GET['producto'];
   $titulo = $_GET['titulo'];

   $datos = array(  "idUsuario"=>$_SESSION["id"],
                    "idProducto"=>$producto,
                    "metodo"=>"gratis",
                    "email"=>$_SESSION["email"],
                    "direccion"=>"",
                    "pais"=>"",
                    "pago"=>0);

   $respuesta = ControladorCarrito::ctrNuevasCompras($datos);

   $ordenar = "id";
   $item = "id";
   $valor = $producto;

   $productosGratis = ControladorProductos::ctrListarProductos($ordenar, $item, $valor);

   foreach ($productosGratis as $key => $value) {
    
         $item1 = "ventasGratis";
         $valor1 = $value["ventasGratis"] + 1;
         $item2 = "id";
         $valor2 =$value["id"];

         $actualizarSolicitud = ControladorProductos::ctrActualizarProducto($item1, $valor1, $item2, $valor2);
   }

   if($respuesta == "ok" && $actualizarSolicitud == "ok"){

      echo '<script>
         
            window.location = "'.$url.'ofertas/aviso";

         </script>';

   }

}else{

   echo '<script>window.location = "'.$url.'cancelado";</script>';


}