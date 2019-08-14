<?php
require_once "../../../controladores/venta.controlador.php";
require_once "../../../modelos/venta.modelo.php";

class imprimirFactura{

public $codigo;

public function traerImpresionFactura(){

$itemVenta = "codigo";
$valorVenta = $this->codigo;
$respuestaVenta = ControladorVenta::ctrMostrarVenta($itemVenta, $valorVenta);

$fecha = substr($respuestaVenta["fecha"],0,-8);
$productos = json_decode($respuestaVenta["productos"], true);
$neto = number_format($respuestaVenta["neto"],2);
$impuesto = number_format($respuestaVenta["impuesto"],2);
$total = number_format($respuestaVenta["total"],2);

require_once('tcpdf_include.php');

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

$pdf->startPageGroup();

$pdf->AddPage();

// ---------------------------------------------------------

$bloque1 = <<<EOF

	<table>
		
		<tr>
			
			<td style="width:150px"><img src="images/logo.png"></td>

			<td style="width:140px; background-color:white">

			<div style="font-size:8.5px; text-align:right; line-height:15px;">
			
				<br>
					NIT: 71.759.963-9

					<br>
					Dirección: Los heraldos y magnolias mz.A Lt. 23 SJL. 
			
			</div>

			</td>

				<td style="background-color:white; width:140px">

				<div style="font-size:8.5px; text-align:right; line-height:15px;">
					
					<br>
					Teléfono: 300 786 52 49
					
					<br>
					soporte@tantum.com.pe

				</div>
				
			</td>

				<td style="background-color:white; width:110px; text-align:center; color:red"><br><br>FACTURA N.<br>$valorVenta</td>


		</tr>

	</table>

EOF;

$pdf->writeHTML($bloque1, false, false, false, false, '');


$pdf->Output('factura2.pdf');
}	

}

$factura = new imprimirFactura();
$factura -> codigo = $_GET["codigo"];
$factura -> traerImpresionFactura();
?>