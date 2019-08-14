<?php

require_once "../../controladores/venta.controlador.php";
require_once "../../modelos/venta.modelo.php";
require_once "../../controladores/clientes.controlador.php";
require_once "../../modelos/clientes.modelo.php";
require_once "../../controladores/administradores.controlador.php";
require_once "../../modelos/administradores.modelo.php";

$reporte = new ControladorVenta();
$reporte -> ctrDescargarReporte();