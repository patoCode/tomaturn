<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Login_model","login");
        $this->load->model('Zona_model','zona');
    }
    public function loginAdmin()
    { 
        $this->load->view('admin/login');        
    }
    public function loginOperario()
    {
        $this->load->view('operario/login');        
    }

    public function checkAdmLogin()
    {
        $usuario = $this->input->post('username');
        $pass = $this->input->post('password');

        $check_user = $this->login->login_user($usuario,$pass);
        if($check_user == TRUE)
        {
            $data = array(
                            'is_logued_in' => TRUE,
                            'perfil'       => 1,
                            'id_usuario'   => $check_user->ID_USUARIO,
                            'username'     => $check_user->NOMBRE_USUARIO
                         ); 
            $this->session->set_userdata($data);
            $this->load->view('admin/base');
        }
        else
        {
            $this->loginAdmin();
        }
    }
    public function checkOperarioLogin()
    {
        $usuario = $this->input->post('username');
        $pass = $this->input->post('password');

        $check_user = $this->login->login_user($usuario,$pass);
        if($check_user == TRUE)
        {
            $data = array(
                            'is_logued_in' => TRUE,
                            'perfil'       => 2,
                            'id_usuario'   => $check_user->ID_USUARIO,
                            'username'     => $check_user->NOMBRE_USUARIO
                         ); 
            $this->session->set_userdata($data);
            $data['zonas'] = $this->zona->getActivas();
            $this->load->view('operario/zona', $data);
        }
        else
        {
            $this->loginOperario();
        }
    }
 
    public function logout_ci()
    {
        $this->session->sess_destroy();
        $this->index();
    }
}