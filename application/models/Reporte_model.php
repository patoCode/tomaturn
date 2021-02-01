<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Reporte_model extends CI_Model
{
	public function consultaUno($params)
	{
		$this->db->select('t.*, c.NOMBRE as categoria, z.NOMBRE as zona');
		$this->db->from('tk_ticket t');
		$this->db->join('tk_categoria c', 'c.ID_CATEGORIA = t.ID_CATEGORIA', '');
		$this->db->join('tk_zona_atencion z', 'z.ID_ZONA = t.ID_ZONA', '');
		if(isset($params['estado']) && $params['estado'] != '' && $params['estado'] > 0)
		{
			$this->db->where('t.estado', $params['estado']);
		}
		if(isset($params['fini']) && $params['fini'] != ''){
			if(isset($params['ffin']) && $params['ffin'] != ''){
				$this->db->where('FECHA_IMPRESION BETWEEN "'. format_date_sql($params['fini']). '" and "'. format_date_sql($params['ffin']).'"');
			}else{
				$hoy = date('Y-m-d');
				$this->db->where('FECHA_IMPRESION BETWEEN "'. format_date_sql($params['fini']). '" and "'.$hoy.'"');
			}
		}
		$query = $this->db->get();
		if($query->num_rows() > 0)
			return $query->result();
		else
			return null;

	}
}