<?php
    
    $url = Ruta::ctrRuta();

 ?>

<!--=====================================
BREADCRUMB CARRITO DE COMPRAS
======================================-->

<div class="container-fluid well well-sm">
	
	<div class="container">
		
		<div class="row">
			
			<ul class="breadcrumb fondoBreadcrumb text-uppercase">
				
				<li><a href="<?php echo $url;  ?>">Inicio</a></li>
				<li class="active pagActiva"><?php echo $rutas[0] ?></li>

			</ul>

		</div>

	</div>

</div>

<!--=====================================
TABLA CARRITO DE COMPRAS
======================================-->

<div class="container-fluid">

	<div class="container">

		<div class="panel panel-default">
			
			<!--=====================================
			CABECERA CARRITO DE COMPRAS
			======================================-->

			<div class="panel-heading cabeceraCarrito">
				
				<div class="col-md-6 col-sm-7 col-xs-12 text-center">
					
					<h3>
						<small>PRODUCTO</small>
					</h3>

				</div>

				<div class="col-md-2 col-sm-1 col-xs-0 text-center">
					
					<h3>
						<small>PRECIO</small>
					</h3>

				</div>

				<div class="col-sm-2 col-xs-0 text-center">
					
					<h3>
						<small>CANTIDAD</small>
					</h3>

				</div>

				<div class="col-sm-2 col-xs-0 text-center">
					
					<h3>
						<small>SUBTOTAL</small>
					</h3>

				</div>

			</div>

			<!--=====================================
			CUERPO CARRITO DE COMPRAS
			======================================-->

			<div class="panel-body cuerpoCarrito">

				

			</div>

			<!--=====================================
			SUMA DEL TOTAL DE PRODUCTOS
			======================================-->

			<div class="panel-body sumaCarrito">

				<div class="col-md-4 col-sm-6 col-xs-12 pull-right well">
					
					<div class="col-xs-6">
						
						<h4>TOTAL:</h4>

					</div>

					<div class="col-xs-6">

						<h4 class="sumaSubTotal">
							
							

						</h4>

					</div> 

				</div>

			</div>

			<!--=====================================
			BOTÓN CHECKOUT
			======================================-->

			<div class="panel-heading cabeceraCheckout">

			<?php

				if(isset($_SESSION["validarSesion"])){

					if($_SESSION["validarSesion"] == "ok"){

						echo '<a id="btnCheckout" href="#modalCheckout" data-toggle="modal" idUsuario="'.$_SESSION["id"].'"><button class="btn btn-default backColor btn-lg pull-right">REALIZAR PAGO</button></a>';

					}


				}else{

					echo '<a href="#modalIngreso" data-toggle="modal"><button class="btn btn-default backColor btn-lg pull-right">REALIZAR PAGO</button></a>';
				}

			?>	

			</div>

		</div>

	</div>

</div>

<!--=====================================
VENTANA MODAL PARA CHECKOUT
======================================-->

<div id="modalCheckout" class="modal fade modalFormulario" role="dialog">
	
	 <div class="modal-content modal-dialog">
	 	
		<div class="modal-body modalTitulo">
			
			<h3 class="backColor">REALIZAR PAGO</h3>

			<button type="button" class="close" data-dismiss="modal">&times;</button>

			<div class="contenidoCheckout">

				<?php

				$respuesta = ControladorCarrito::ctrMostrarTarifas();

				echo '<input type="hidden" id="tasaImpuesto" value="'.$respuesta["impuesto"].'">
					  <input type="hidden" id="envioNacional" value="'.$respuesta["envioNacional"].'">
				      <input type="hidden" id="envioInternacional" value="'.$respuesta["envioInternacional"].'">
				      <input type="hidden" id="tasaMinimaNal" value="'.$respuesta["tasaMinimaNal"].'">
				      <input type="hidden" id="tasaMinimaInt" value="'.$respuesta["tasaMinimaInt"].'">
				      <input type="hidden" id="tasaPais" value="'.$respuesta["pais"].'">

				';

				?>
				
				<div class="formEnvio ">
<!-- DEPARTAMENTO PROVINCIA DISTRITO -->
					<div class="row">

					<h4 class="text-center well text-muted text-uppercase">Información de envío</h4>

							<div class="col-xs-4 seleccioneDepartamento"></div>
							
							<div class="col-xs-4 seleccioneProvincia"></div>
				
							<div class="col-xs-4 seleccioneDistrito"></div>

					</div>
					<!--END  DEPARTAMENTO PROVINCIA DISTRITO -->
 				<br>
					<!-- DIRECCION DE ENVIO NOMBRE COMPLETO TELEFONO -->
					<div class="row">
				
							<div class="col-xs-12">
								<input type="text" class="form-control" name="direccion" placeholder="Direccion de envio" required>
							</div>

					</div>
					<!-- END DIRECCION DE ENVIO NOMBRE COMPLETO TELEFONO -->
					<br>
					<!--  TELEFONO -->
					<div class="row">
				
							<div class="col-xs-6">
								<input type="text" class="form-control" name="telefono" placeholder="Telefono o celular de contacto" required>
							</div>

					</div>
					<!-- END TELEFONO -->
					</div>

				<br>

				<div class="formaPago row">
					
					<h4 class="text-center well text-muted text-uppercase">Elige la forma de pago</h4>
					<!-- /*=================================================================
                      MERCADO PAGO
 					/*============================================================= -->
					<figure class="col-xs-4">
						
						<center>
							
							<input id="checkPayu" type="radio" name="pago" value="payu">

						</center>
						<center>
						<img src="<?php echo $url; ?>vistas/img/plantilla/mercadopago.jpg" class="img-thumbnail">
						</center>
					</figure>
					<!-- /*=================================================================
										PAYPAL
					/*============================================================= -->
					<figure class="col-xs-4">
						
						<center>
							
							<input id="checkPaypal" type="radio" name="pago" value="paypal" checked>

						</center>	
						<center>
						<img src="<?php echo $url; ?>vistas/img/plantilla/paypal.jpg" class="img-thumbnail">		
						</center>
					</figure>

 <!-- /*=================================================================
                      RECOJO EN TIENDA
 /*============================================================= -->
					<figure class="col-xs-4">
						
						<center>
							
							<input id="checkRecojo" type="radio" name="pago" value="recojo">

						</center>
						<center>	
						<img src="<?php echo $url; ?>vistas/img/plantilla/recojo.jpg" class="img-thumbnail img-responsive">
						</center>
					</figure>

				</div>

				<br>

				<div class="listaProductos row">
					
					<h4 class="text-center well text-muted text-uppercase">Productos a comprar</h4>

					<table class="table table-striped tablaProductos">
						
						 <thead>
						 	
							<tr>		
								<th>Producto</th>
								<th>Cantidad</th>
								<th>Precio</th>
							</tr>

						 </thead>

						 <tbody>
						 	


						 </tbody>

					</table>

					<div class="col-sm-6 col-xs-12 pull-right">
						
						<table class="table table-striped tablaTasas">
							
							<tbody>
								
								<tr>
									<td>Subtotal</td>	
									<td><span class="cambioDivisa">PEN</span> S/.<span class="valorSubtotal" valor="0">0</span></td>	
								</tr>

								<tr>
									<td>Envío</td>	
									<td><span class="cambioDivisa">PEN</span> S/.<span class="valorTotalEnvio" valor="0">0</span></td>	
								</tr>

								<tr>
									<td>Impuesto</td>	
									<td><span class="cambioDivisa">PEN</span> S/.<span class="valorTotalImpuesto" valor="0">0</span></td>	
								</tr>

								<tr>
									<td><strong>Total</strong></td>	
									<td><strong><span class="cambioDivisa">PEN</span> S/.<span class="valorTotalCompra" valor="0">0</span></strong></td>	
								</tr>

							</tbody>	

						</table>

						 <div class="divisa">

						 	<select class="form-control" id="cambiarDivisa" name="divisa">
						 		
							

						 	</select>	

						 	<br>

						 </div>

					</div>

					<div class="clearfix"></div>

					<!-- <form class="formPayu" style="display:none">
					 
						<input name="merchantId" type="hidden" value=""/>
						<input name="accountId" type="hidden" value=""/>
						<input name="description" type="hidden" value=""/>
						<input name="referenceCode" type="hidden" value=""/>	
						<input name="amount" type="hidden" value=""/>
						<input name="tax" type="hidden" value=""/>
						<input name="taxReturnBase" type="hidden" value=""/>
						<input name="shipmentValue" type="hidden" value=""/>
						<input name="currency" type="hidden" value=""/>
						<input name="lng" type="hidden" value="es"/>
						<input name="confirmationUrl" type="hidden" value="" />
						<input name="responseUrl" type="hidden" value=""/>
						<input name="declinedResponseUrl" type="hidden" value=""/>
						<input name="displayShippingInformation" type="hidden" value=""/>
						<input name="test" type="hidden" value="" />
						<input name="signature" type="hidden" value=""/>

					  <input name="Submit" class="btn btn-block btn-lg btn-default backColor" type="submit"  value="PAGAR" >
					</form> -->

					<form action="<?php echo $url.'perfil'; ?>" method="POST">
							<script
								src="https://www.mercadopago.com.pe/integrations/v1/web-tokenize-checkout.js"
								data-public-key="TEST-a21b80be-03de-491f-91bf-47ab614f5a0d"
								data-transaction-amount="100.00">
							</script>
					</form>
					<?php
					if(isset($_REQUEST["token"])){

					$token = $_REQUEST["token"];
					// echo '<pre>'; print_r($token); echo '</pre>';
					$payment_method_id = $_REQUEST["payment_method_id"];
					// echo '<pre>'; print_r($payment_method_id); echo '</pre>';
					$installments = $_REQUEST["installments"];
					// echo '<pre>'; print_r($installments); echo '</pre>';
					$issuer_id = $_REQUEST["issuer_id"];
					// echo '<pre>'; print_r($issuer_id); echo '</pre>';

					 MercadoPago\SDK::setAccessToken("TEST-2027312840758745-082115-d36bd420468be2ac6ded528fc1f61de0-254920013");
				
					$payment = new MercadoPago\Payment();
					$payment->transaction_amount = 100;
					$payment->token = $token;
					$payment->description = "Intelligent Aluminum Shoes";
					$payment->installments = $installments;
					$payment->payment_method_id = $payment_method_id;
					$payment->issuer_id = $issuer_id;
					$payment->payer = array(
					"email" => "abdul_bosco@hotmail.com"
					);
					// Guarda y postea el pago
					$payment->save();
					// echo '<pre>'; print_r($payment); echo '</pre>';
		
					// Imprime el estado del pago
					echo $payment->status;
					
					}
					?>

				


					<button class="btn btn-block btn-lg btn-default backColor btnPagar">PAGAR</button>

				</div>

			</div>

		</div>

		<div class="modal-footer">
      	
      	</div>

	</div>

</div>
