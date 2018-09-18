<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Estacion_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getById($idEstacion)
    {
		$this->db->from('tk_estacion');
		$this->db->where('id_estacion', $idEstacion);
		$query = $this->db->get();
		return $query->row();
    }
}