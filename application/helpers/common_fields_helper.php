<?php
if (!function_exists('add_fields_reg')) {
    function add_fields_reg($crud, $username) {
		$crud->field_type('USUARIO_REG', 'hidden', $username);
		$crud->field_type('FECHA_REG', 'hidden', date("Y-m-d H:i:s"));
    }
}
if (!function_exists('add_fields_edit')) {
    function add_fields_edit($crud, $username) {
		$crud->field_type('USUARIO_MOD', 'hidden', $username);
		$crud->field_type('FECHA_MOD', 'hidden', date("Y-m-d H:i:s"));
    }
}