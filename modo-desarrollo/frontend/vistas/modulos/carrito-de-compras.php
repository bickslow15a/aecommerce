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

<?php  
  MercadoPago\SDK::setClientId("2027312840758745");
  MercadoPago\SDK::setClientSecret("jtn2jK8oVW0Jzs1pjyKCvgQsev4HpIBf");
?>
                <?php
  # Create a preference object
  $preference = new MercadoPago\Preference();
  # Create an item object
  $item = new MercadoPago\Item();
  $item->id = "1234";
  $item->title = "Awesome Silk Watch";
  $item->quantity = 5;
  $item->currency_id = "PEN";
  $item->unit_price = 92.56;
  # Create a payer object
  $payer = new MercadoPago\Payer();
  $payer->email = "lola.runolfsdottir@yahoo.com";
  # Setting preference properties
  $preference->items = array($item);
  $preference->payer = $payer;
  # Save and posting preference
  $preference->save();
?>
<?php
  // ...
  $payer = new MercadoPago\Payer();
  $payer->name = "Charles";
  $payer->surname = "Raya";
  $payer->email = "charles@gmail.com";
  $payer->date_created = "2018-06-02T12:58:41.425-04:00";
  $payer->phone = array(
    "area_code" => "",
    "number" => "952-340-745"
  );
  $payer->identification = array(
    "type" => "DNI",
    "number" => "12345678"
  );
  $payer->address = array(
    "street_name" => "Chalet Catalina Delagarza",
    "street_number" => 1023,
    "zip_code" => "26947"
  );
  // ...
?>
				
					<a href="<?php echo $preference->init_point; ?>">Pay</a>
				
					<button class="btn btn-block btn-lg btn-default backColor btnPagar">PAGAR</button>

				</div>

			</div>

		</div>

		<div class="modal-footer">
      	
      	</div>

	</div>

</div>
