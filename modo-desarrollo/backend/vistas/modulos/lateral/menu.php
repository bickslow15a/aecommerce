<!--=====================================
MENU
======================================-->	

<ul class="sidebar-menu">

	<li class="active"><a href="inicio"><i class="fa fa-home"></i> <span>Inicio</span></a></li>

  <?php

  if($_SESSION["perfil"] == "administrador"){

	echo '<li><a href="comercio"><i class="fa fa-files-o"></i> <span>Gestor Comercio</span></a></li>';

  }

  ?>

	<li><a href="slide"><i class="fa fa-edit"></i> <span>Gestor Slide</span></a></li>

	<li class="treeview">
      
      <a href="#">
        <i class="fa fa-th"></i>
        <span>Gestor Categorías</span>
        <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>

      <ul class="treeview-menu">
        
        <li><a href="categorias"><i class="fa fa-circle-o"></i> Categorías</a></li>
        <li><a href="subcategorias"><i class="fa fa-circle-o"></i> Subcategorías</a></li>
      
      </ul>

  </li>

  <li><a href="productos"><i class="fa fa-product-hunt"></i> <span>Gestor Productos</span></a></li>

  <li><a href="banner"><i class="fa fa-map-o"></i> <span>Gestor Banner</span></a></li>

  <?php
// *********CHAPIAMA  EDICION DE MENUS VENTAS********
  if($_SESSION["perfil"] == "administrador"){

  echo '<li class="treeview">
        <a>
        <i class="fa fa-th"></i>
        <span>Gestor Ventas</span>
        <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
        </span>
        </a>
        <ul class="treeview-menu">
        <li><a href="ventas"><i class="fa fa-circle-o"></i><span>Administrar Ventas</span></a></li>
        <li><a href="crear-venta"><i class="fa fa-circle-o"></i><span>Crear Ventas</span></a></li>
        <li><a href="ventas-online"><i class="fa fa-circle-o"></i><span>Ventas OnLine</span></a></li>
        <li><a href="reportes-venta"><i class="fa fa-circle-o"></i><span>Reportes</span></a></li>
        </ul>
  </li>';

  }
//*********************** */
  ?>

  <li><a href="visitas"><i class="fa fa-map-marker"></i> <span>Gestor Visitas</span></a></li>

  <li class="treeview">
    <a>
      <i class="fa fa-users"></i>
      <span>Gestor Usuarios</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
    </a>
        <ul class="treeview-menu">
          <li><a href="usuarios"><i class="fa fa-circle-o"></i><span>Usuarios Página</span></a></li>
          <li><a href="clientes"><i class="fa fa-circle-o"></i><span>Clientes</span></a></li>
        </ul>
  </li>

  <?php

   if($_SESSION["perfil"] == "administrador"){

    echo '<li><a href="perfiles"><i class="fa fa-key"></i> <span>Gestor Perfiles</span></a></li>';

  }

  ?>

</ul>	