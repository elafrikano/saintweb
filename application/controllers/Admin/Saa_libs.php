<?php

class Saa_libs extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Saa_lib_model');
    }

    public function index() {

        $this->load->view('templates/header');
        $this->load->view('navbars/admin');
        $this->load->view('Admin/Facturas');     
        $this->load->view('templates/footer');
    }

    public function dashboard() {
      if (!$this->session->userdata('logueado')) {

         redirect('usuarios/acceso');
     } else{
         $this->load->model('Usuarios_model');
         $p=$this->Usuarios_model->comprobar_permisos($this->session->userdata('permiso'));
         if($p->LibroVentaConsolidado==1){  
            $this->load->view('templates/header');
            $this->load->view('navbars/admin');
            $this->load->view('Admin/Dashboard');     
            $this->load->view('templates/footer');
        }else{
            redirect('usuarios/acceso');  
        }

    }
}

public function ver(){
    header('Content-Type: application/json');
    echo json_encode($this->Saa_lib_model->get_all());
}

public function totalCredito(){
    header('Content-Type: application/json');
    echo json_encode($this->Saa_lib_model->get_credito_sucursal());
}

public function totalFacturado(){
    header('Content-Type: application/json');
    echo json_encode($this->Saa_lib_model->get_facturado_sucursal());
}

public function totalFacturas(){
    header('Content-Type: application/json');
    echo json_encode($this->Saa_lib_model->get_facturas_sucursal());
}

}
